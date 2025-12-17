import { useEffect, useMemo, useRef, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { Keyboard, Mic, MicOff, PhoneCall, PhoneOff, PhoneForwarded, Volume2, VolumeX } from 'lucide-react'
import { TopBar } from '../components/ui/TopBar'
import { DialInput } from '../components/ui/DialInput'
import { DialPad } from '../components/ui/DialPad'
import { ActionButton } from '../components/ui/ActionButton'
import { Card } from '../components/ui/Card'
import { Button } from '../components/ui/Button'
import { InputText } from '../components/ui/InputText'
import { useSip } from '../sip/react/useSip'
import { clearStorage } from '../services/storageService'

export default function Caller() {
  const navigate = useNavigate()
  const sip = useSip()

  const [dialValue, setDialValue] = useState('')
  const [transferTo, setTransferTo] = useState('')
  const [showKeypad, setShowKeypad] = useState(true)
  const [showTransfer, setShowTransfer] = useState(false)
  const [endedBanner, setEndedBanner] = useState(false)
  const prevCallStatusRef = useRef(sip.snapshot.callStatus)

  const canCall = useMemo(() => dialValue.trim().length > 0, [dialValue])
  const inCall = sip.snapshot.callStatus !== 'idle'
  const isEstablished = sip.snapshot.callStatus === 'established'

  useEffect(() => {
    const prev = prevCallStatusRef.current
    const next = sip.snapshot.callStatus
    prevCallStatusRef.current = next
    // Mostra “encerrada” quando sai de qualquer estado de chamada para idle
    if (prev !== 'idle' && next === 'idle') {
      setEndedBanner(true)
      const t = window.setTimeout(() => setEndedBanner(false), 1500)
      return () => window.clearTimeout(t)
    }
  }, [sip.snapshot.callStatus])

  function appendKey(key: string) {
    setDialValue((prev) => (prev + key).slice(0, 128))
  }

  function handleDialChange(next: string) {
    setDialValue(next.slice(0, 128))
  }

  async function handleCall() {
    if (!canCall) return
    await sip.startCall(dialValue)
  }

  async function handleHangup() {
    await sip.hangup()
  }

  function handleHistoryClick() {
    navigate('/historico')
  }

  function handleContactsClick() {
    navigate('/contatos')
  }

  async function handleLogout() {
    // Limpa credenciais/config no store para não auto-reconectar
    await clearStorage().catch(() => {})

    // Não bloqueia a navegação caso o SIP demore/trave ao desconectar (ex.: durante chamada)
    if (sip.snapshot.callStatus !== 'idle') {
      void sip.hangup().catch(() => {})
    }
    void sip.unregisterAndDisconnect().catch(() => {})
    navigate('/')
  }

  async function handleTransferBlind() {
    if (!transferTo.trim()) return
    await sip.transferBlind(transferTo.trim())
  }

  async function handleTransferAttended() {
    if (!transferTo.trim()) return
    await sip.transferAttended(transferTo.trim())
  }

  function statusLabel() {
    switch (sip.snapshot.callStatus) {
      case 'dialing':
        return 'Chamando...'
      case 'ringing':
        return 'Chamando...'
      case 'incoming':
        return 'Recebendo ligação...'
      case 'established':
        return 'Em ligação'
      case 'terminating':
        return 'Encerrando...'
      default:
        return 'Pronto'
    }
  }

  function formatDuration(totalSec: number) {
    const m = Math.floor(totalSec / 60)
    const s = totalSec % 60
    return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`
  }

  const connectedAs = sip.snapshot.identity
    ? `${sip.snapshot.identity.username}@${sip.snapshot.identity.domain}`
    : ''

  return (
    <div className="h-screen overflow-hidden bg-background text-text">
      <TopBar
        onHistoryClick={handleHistoryClick}
        onContactsClick={handleContactsClick}
        onLogout={handleLogout}
      />

      <main className="mx-auto flex h-full max-w-2xl flex-col px-4 pb-6 pt-24">
        {/* Status centralizado no topo (não atrapalha o input) */}
        {!inCall ? (
          <div className="fixed top-16 left-1/2 z-30 -translate-x-1/2 text-center">
            <div className="inline-flex items-center gap-2 rounded-full border border-white/10 bg-background/80 px-3 py-2 text-xs text-text backdrop-blur">
              <span className="h-2.5 w-2.5 rounded-full bg-success" aria-hidden="true" />
              <span className="font-semibold">{connectedAs || 'Conectado'}</span>
            </div>
          </div>
        ) : null}

        {/* Banner curto de encerrada */}
        {endedBanner ? (
          <div className="fixed bottom-4 right-4 z-30 rounded-full border border-white/10 bg-background/80 px-3 py-2 text-xs font-semibold text-danger backdrop-blur">
            Chamada encerrada
          </div>
        ) : null}

        {/* Ações estilo celular (durante chamada) */}
        {inCall ? (
          <Card className="mb-4 border border-white/5 p-4">
            <div className="flex items-start justify-between gap-4">
              <div className="space-y-1">
                <p className="text-sm text-muted">{statusLabel()}</p>
                {isEstablished ? <p className="text-xs text-muted">{formatDuration(sip.callDurationSec)}</p> : null}
              </div>
            </div>

            <div className="mt-4 grid grid-cols-4 gap-2">
              <button
                type="button"
                onClick={() => setShowKeypad((p) => !p)}
                className="rounded-xl border border-white/10 bg-background px-3 py-2 text-xs font-semibold text-text transition hover:bg-white/5"
              >
                <div className="mx-auto flex w-full items-center justify-center gap-2">
                  <Keyboard size={16} aria-hidden="true" />
                  <span>Teclar</span>
                </div>
              </button>
              <button
                type="button"
                onClick={() => void sip.toggleMute()}
                className="rounded-xl border border-white/10 bg-background px-3 py-2 text-xs font-semibold text-text transition hover:bg-white/5"
              >
                <div className="mx-auto flex w-full items-center justify-center gap-2">
                  {sip.snapshot.muted ? <MicOff size={16} aria-hidden="true" /> : <Mic size={16} aria-hidden="true" />}
                  <span>Mudo</span>
                </div>
              </button>
              <button
                type="button"
                onClick={() => sip.toggleSpeaker()}
                className="rounded-xl border border-white/10 bg-background px-3 py-2 text-xs font-semibold text-text transition hover:bg-white/5"
              >
                <div className="mx-auto flex w-full items-center justify-center gap-2">
                  {sip.speakerOn ? <Volume2 size={16} aria-hidden="true" /> : <VolumeX size={16} aria-hidden="true" />}
                  <span>Viva voz</span>
                </div>
              </button>
              <button
                type="button"
                onClick={() => setShowTransfer((p) => !p)}
                className="rounded-xl border border-white/10 bg-background px-3 py-2 text-xs font-semibold text-text transition hover:bg-white/5"
              >
                <div className="mx-auto flex w-full items-center justify-center gap-2">
                  <PhoneForwarded size={16} aria-hidden="true" />
                  <span>Transferir</span>
                </div>
              </button>
            </div>

            {showTransfer ? (
              <div className="mt-4 flex flex-col gap-2">
                <InputText
                  value={transferTo}
                  onChange={setTransferTo}
                  placeholder="Transferir para (ramal/número)"
                  name="transferTo"
                />
                <div className="flex items-center gap-2">
                  <Button type="button" variant="primary" onClick={() => void handleTransferBlind()}>
                    Cega
                  </Button>
                  <Button type="button" variant="primary" onClick={() => void handleTransferAttended()}>
                    Assistida
                  </Button>
                </div>
              </div>
            ) : null}
          </Card>
        ) : null}

        {/* Status / chamada recebida */}
        {sip.snapshot.callStatus === 'incoming' ? (
          <Card className="mb-4 border border-white/5 p-4">
            <div className="flex items-start justify-between gap-4">
              <div className="space-y-1">
                <p className="text-sm text-muted">Chamada recebida</p>
                <p className="text-base font-semibold">
                  {sip.snapshot.incoming?.displayName ??
                    sip.snapshot.incoming?.user ??
                    sip.snapshot.incoming?.uri ??
                    'Desconhecido'}
                </p>
              </div>
              <div className="flex items-center gap-2">
                <Button type="button" variant="primary" onClick={() => void sip.answer()}>
                  Atender
                </Button>
                <Button type="button" variant="danger" onClick={() => void sip.reject()}>
                  Recusar
                </Button>
              </div>
            </div>
          </Card>
        ) : null}

        <section className="mt-[5vh] flex-none md:mt-10">
          <DialInput value={dialValue} onChange={handleDialChange} autoFocus disabled={inCall} />
        </section>

        <section className="mt-8 flex min-h-0 flex-1 w-full flex-col items-stretch justify-end gap-10">
          {showKeypad ? (
            <DialPad
              className="mx-auto w-full max-w-sm"
              onKeyPress={(k) => {
                // Sempre toca o som local do DTMF.
                // Só envia DTMF remoto quando a chamada estiver estabelecida.
                sip.sendDtmf(k, { playLocal: true, sendRemote: isEstablished })
                appendKey(k)
              }}
              disabled={sip.snapshot.callStatus === 'incoming' || sip.snapshot.callStatus === 'dialing' || sip.snapshot.callStatus === 'ringing'}
            />
          ) : null}

          <div className="flex items-center justify-center gap-6">
            <ActionButton
              variant="success"
              icon={<PhoneCall size={28} strokeWidth={2} aria-hidden="true" />}
              onClick={handleCall}
              ariaLabel="Chamar"
              disabled={!canCall || inCall || sip.snapshot.connection !== 'registered'}
            />
            <ActionButton
              variant="danger"
              icon={<PhoneOff size={28} strokeWidth={2} aria-hidden="true" />}
              onClick={handleHangup}
              ariaLabel="Encerrar"
              disabled={!inCall}
            />
          </div>
        </section>
      </main>
    </div>
  )
}