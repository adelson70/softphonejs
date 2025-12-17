import { useContext } from 'react'
import { SipContext } from './SipProvider'

export function useSip() {
  const ctx = useContext(SipContext)
  if (!ctx) throw new Error('useSip deve ser usado dentro de <SipProvider>')
  return ctx
}


