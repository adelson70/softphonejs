import { app, BrowserWindow } from 'electron'

// Armazena referência global da janela principal
let mainWindow: BrowserWindow | null = null

export function getMainWindow(): BrowserWindow | null {
  return mainWindow
}

export function setMainWindow(window: BrowserWindow | null): void {
  mainWindow = window
}

export function setupAppLifecycle(createWindow: () => BrowserWindow): void {
  // Quit when all windows are closed, except on macOS. There, it's common
  // for applications and their menu bar to stay active until the user quits
  // explicitly with Cmd + Q.
  app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
      app.quit()
    }
    setMainWindow(null)
  })

  app.on('activate', () => {
    // On OS X it's common to re-create a window in the app when the
    // dock icon is clicked and there are no other windows open.
    if (BrowserWindow.getAllWindows().length === 0) {
      const window = createWindow()
      setMainWindow(window)
    }
  })

  app.whenReady().then(() => {
    const window = createWindow()
    setMainWindow(window)
  })
}
