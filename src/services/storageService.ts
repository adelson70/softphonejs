export async function getStorage<T = any>(key: string): Promise<T> {
  // Preferência: Electron Store via preload (contextBridge)
  if (typeof window !== 'undefined' && (window as any).storage?.get) {
    return await window.storage.get(key)
  }

  // Fallback (browser / `npm run dev` que roda só o Vite): localStorage
  // Mantém a UI funcionando fora do Electron, mas o softphone SIP deve rodar no Electron.
  if (typeof window !== 'undefined' && window.localStorage) {
    console.warn('[storageService] window.storage não está disponível; usando localStorage como fallback (modo browser).')
    const raw = window.localStorage.getItem(key)
    return (raw ? JSON.parse(raw) : undefined) as T
  }

  throw new Error('Storage indisponível: rode no Electron (preload) para usar window.storage.')
}

export async function setStorage(key: string, value: any): Promise<void> {
  // Preferência: Electron Store via preload (contextBridge)
  if (typeof window !== 'undefined' && (window as any).storage?.set) {
    await window.storage.set(key, value)
    return
  }

  // Fallback (browser / Vite puro)
  if (typeof window !== 'undefined' && window.localStorage) {
    console.warn('[storageService] window.storage não está disponível; salvando em localStorage como fallback (modo browser).')
    window.localStorage.setItem(key, JSON.stringify(value))
    return
  }

  throw new Error('Storage indisponível: rode no Electron (preload) para usar window.storage.')
}

export async function clearStorage(): Promise<void> {
  // Preferência: Electron Store via preload (contextBridge)
  if (typeof window !== 'undefined' && (window as any).storage?.clear) {
    await window.storage.clear()
    return
  }

  // Fallback (browser)
  if (typeof window !== 'undefined' && window.localStorage) {
    console.warn('[storageService] window.storage não está disponível; limpando localStorage (modo browser).')
    window.localStorage.clear()
    return
  }
}

