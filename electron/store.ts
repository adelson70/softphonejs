import Store from 'electron-store';
import { app } from 'electron';
import path from 'node:path';

// Configura o caminho de dados para ser portátil (ao lado do executável)
const getPortableDataPath = () => {
  // Em desenvolvimento, usa o padrão
  if (!app.isPackaged) {
    return undefined;
  }
  
  // Em produção, salva em uma pasta 'data' ao lado do executável
  let executablePath: string;
  
  if (process.platform === 'win32') {
    // Windows: app.getPath('exe') retorna o caminho do .exe
    executablePath = app.getPath('exe');
  } else if (process.platform === 'darwin') {
    // macOS: app.getPath('exe') retorna o caminho dentro do .app bundle
    // Para portátil, queremos a pasta que contém o .app
    executablePath = app.getPath('exe');
    // Remove o caminho dentro do bundle para chegar à pasta do .app
    const appBundlePath = executablePath.split('.app/')[0] + '.app';
    return path.join(path.dirname(appBundlePath), 'data');
  } else {
    // Linux: AppImage ou executável direto
    executablePath = process.execPath;
  }
  
  return path.join(path.dirname(executablePath), 'data');
};

export interface SipConfig {
    username: string;
    password: string;
    server: string;
    status: 'online' | 'offline';
}

export interface Contact {
    id: string;
    name: string;
    number: string;
    createdAt: number;
}

export interface CallHistoryEntry {
    id: string;
    number: string;
    displayName?: string;
    direction: 'incoming' | 'outgoing';
    status: 'answered' | 'missed' | 'rejected' | 'failed' | 'completed';
    startTime: number;
    endTime?: number;
    duration?: number;
}

const dataPath = getPortableDataPath();

export const appStore = new Store({
    name: 'softphone-app',
    cwd: dataPath, // Salva na pasta local ao invés do diretório do sistema
    defaults: {
        sip: {} as SipConfig,
        contacts: [] as Contact[],
        callHistory: [] as CallHistoryEntry[],
    },
});
