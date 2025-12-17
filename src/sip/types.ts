import type { Invitation, Inviter, Registerer, Session, SessionState, UserAgent } from 'sip.js'

export type SipTransportProtocol = 'ws' | 'wss'

export type SipCredentials = {
  username: string
  password: string
  /** Pode ser domínio (ex: sip.suaempresa.com) ou URL WS/WSS completa (ex: wss://sip.suaempresa.com:8089/ws) */
  server: string
  /** Porta do websocket quando `server` não for URL completa. Padrão: 8089 */
  wsPort?: number
  /** Path do websocket quando `server` não for URL completa. Padrão: /ws */
  wsPath?: string
  /** Protocolo websocket quando `server` não for URL completa. Padrão: wss */
  wsProtocol?: SipTransportProtocol
}

export type SipConnectionState = 'idle' | 'connecting' | 'connected' | 'registered' | 'unregistered' | 'error'

export type SipCallDirection = 'outgoing' | 'incoming'

export type CallStatus =
  | 'idle'
  | 'dialing'
  | 'ringing'
  | 'incoming'
  | 'established'
  | 'terminating'
  | 'terminated'
  | 'failed'

export type IncomingCallInfo = {
  displayName?: string
  user?: string
  uri?: string
}

export type SipIdentity = {
  username: string
  domain: string
}

export type SipClientSnapshot = {
  connection: SipConnectionState
  callStatus: CallStatus
  callDirection?: SipCallDirection
  incoming?: IncomingCallInfo
  lastError?: string
  identity?: SipIdentity
  muted?: boolean
  /** Informativo: estado nativo do sip.js, quando houver sessão ativa */
  sipSessionState?: SessionState
}

export type SipRuntime = {
  userAgent?: UserAgent
  registerer?: Registerer
  session?: Session
  inviter?: Inviter
  invitation?: Invitation
}

export type SipClientEvents = {
  onSnapshot: (snap: SipClientSnapshot) => void
}


