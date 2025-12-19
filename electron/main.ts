import { setupAppLifecycle } from './app/lifecycle'
import { setupStoreIPC } from './ipc/store.ipc'
import { setupWindowIPC } from './ipc/window.ipc'
import { createMainWindow } from './windows/mainWindow'
import './app/paths' // inicializa paths

setupStoreIPC()
setupWindowIPC()
setupAppLifecycle(createMainWindow)
