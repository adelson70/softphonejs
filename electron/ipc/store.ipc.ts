import { ipcMain } from 'electron'
import { appStore } from '../store'

export function setupStoreIPC(): void {
  ipcMain.handle('store:get', (_event, key: string) => {
    return appStore.get(key)
  })

  ipcMain.handle('store:set', (_event, key: string, value: any) => {
    appStore.set(key, value)
  })
}

