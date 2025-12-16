import { setupAppLifecycle } from './app/lifecycle'
import { setupStoreIPC } from './ipc/store.ipc'
import { createMainWindow } from './windows/mainWindow'
import './app/paths' // inicializa paths

setupStoreIPC()
setupAppLifecycle(createMainWindow)
