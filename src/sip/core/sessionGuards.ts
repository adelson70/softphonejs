import type { Invitation, Inviter, Session } from 'sip.js'
import { SessionState } from 'sip.js'

export function isInvitation(session: Session | undefined): session is Invitation {
  return Boolean(session && (session as Invitation).accept)
}

export function isInviter(session: Session | undefined): session is Inviter {
  return Boolean(session && (session as Inviter).invite)
}

export function canSendBye(session: Session | undefined): boolean {
  if (!session) return false
  return session.state === SessionState.Established
}

export function canCancel(inviter: Inviter | undefined): boolean {
  if (!inviter) return false
  return inviter.state === SessionState.Establishing
}

export function canReject(invitation: Invitation | undefined): boolean {
  if (!invitation) return false
  return invitation.state === SessionState.Establishing
}


