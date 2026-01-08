import type { SipConfig } from '../../../electron/store'
import { getStorage, setStorage, deleteStorage } from '../../services/servicoArmazenamento'

const SIP_KEY = 'sip'

export async function loadSipConfig(): Promise<SipConfig | null> {
  try {
    const cfg = await getStorage<SipConfig>(SIP_KEY)
    if (!cfg || typeof cfg !== 'object') return null
    if (!('username' in cfg) || !('password' in cfg) || !('server' in cfg)) return null
    return cfg
  } catch {
    return null
  }
}

export async function saveSipConfig(next: SipConfig): Promise<void> {
  await setStorage(SIP_KEY, next)
}

export async function clearSipConfig(): Promise<void> {
  // Remove completamente as credenciais do cache
  await deleteStorage(SIP_KEY)
}


