import type { Session } from 'sip.js'

type PeerConnectionLike = {
  getReceivers(): Array<{ track?: MediaStreamTrack | null }>
}

function getPeerConnection(session: Session): PeerConnectionLike | undefined {
  const anySession = session as any
  const sdh = anySession.sessionDescriptionHandler
  const pc: PeerConnectionLike | undefined = sdh?.peerConnection
  return pc
}

export function bindRemoteAudio(session: Session, audioEl: HTMLAudioElement): void {
  const pc = getPeerConnection(session)
  if (!pc) return

  const remoteStream = new MediaStream()
  pc.getReceivers().forEach((receiver) => {
    if (receiver.track) remoteStream.addTrack(receiver.track)
  })

  audioEl.srcObject = remoteStream
  // autoplay pode falhar sem gesto do usuário; ainda assim tentamos.
  audioEl.play().catch(() => {})
}


