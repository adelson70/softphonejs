export async function getStorage<T = any>(key: string): Promise<T> {
  if (!window.storage) {
    throw new Error('window.storage não está disponível')
  }
  return await window.storage.get(key)
}

export async function setStorage(key: string, value: any): Promise<void> {
  if (!window.storage) {
    throw new Error('window.storage não está disponível')
  }
  await window.storage.set(key, value)
}

