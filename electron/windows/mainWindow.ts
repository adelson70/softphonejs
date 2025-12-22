import { BrowserWindow } from 'electron'
import { fileURLToPath } from 'node:url'
import path from 'node:path'
import { existsSync } from 'node:fs'
import { VITE_DEV_SERVER_URL, RENDERER_DIST } from '../app/paths'
import dotenv from 'dotenv'
dotenv.config()

const __dirname = path.dirname(fileURLToPath(import.meta.url))

// Função para obter o caminho do ícone
function getIconPath(): string | undefined {
  const appRoot = process.env.APP_ROOT || path.join(__dirname, '..', '..')
  const iconPath = path.join(appRoot, 'build', 'icon.png')
  
  // Tenta diferentes formatos dependendo da plataforma
  if (process.platform === 'win32') {
    const icoPath = path.join(appRoot, 'build', 'icon.ico')
    if (existsSync(icoPath)) {
      return icoPath
    }
  }
  
  if (existsSync(iconPath)) {
    return iconPath
  }
  
  // Se não encontrar ícone, retorna undefined (usa o padrão do Electron)
  return undefined
}

export function createMainWindow(): BrowserWindow {
  const iconPath = getIconPath()
  
  const win = new BrowserWindow({
    ...(iconPath && { icon: iconPath }),
    width: Number(process.env.WINDOW_WIDTH) || 450,
    height: Number(process.env.WINDOW_HEIGHT) || 700,
    resizable: false,
    maximizable: false,
    fullscreenable: false,
    webPreferences: {
      // `preload.mjs` é gerado pelo vite-plugin-electron em `dist-electron/`
      // e fica no mesmo diretório do `main.js` em runtime.
      preload: path.join(__dirname, 'preload.mjs'),
      contextIsolation: true,
      nodeIntegration: false,
    },
  })

  win.setMenuBarVisibility(false)

  // Test active push message to Renderer-process.
  win.webContents.on('did-finish-load', () => {
    win?.webContents.send('main-process-message', (new Date).toLocaleString())
  })

  if (VITE_DEV_SERVER_URL) {
    win.loadURL(VITE_DEV_SERVER_URL)
  } else {
    win.loadFile(path.join(RENDERER_DIST, 'index.html'))
  }

  return win
}

