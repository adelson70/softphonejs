/// <reference types="vite/client" />

interface Window {
  storage: {
    get(key: string): Promise<any>
    set(key: string, value: any): Promise<void>
    clear(): Promise<void>
    delete(key: string): Promise<void>
  }
  ipcRenderer: {
    on(channel: string, listener: (event: any, ...args: any[]) => void): void
    off(channel: string, listener: (event: any, ...args: any[]) => void): void
    send(channel: string, ...args: any[]): void
    invoke(channel: string, ...args: any[]): Promise<any>
  }
}
