# Echo - Softphone SIP

<div align="center">

![Echo Logo](build/icon.svg)

**Softphone SIP multiplataforma com interface moderna e intuitiva para chamadas VoIP profissionais**

[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue?style=flat-square&logo=github)](https://github.com/adelson70/softphonejs)
[![Website](https://img.shields.io/badge/Website-Landing%20Page-green?style=flat-square)](https://echo-landingpage-eta.vercel.app/)
[![License](https://img.shields.io/badge/License-Private-red?style=flat-square)](LICENSE)

</div>

## 📋 Sobre

O **Echo** é um softphone SIP moderno e profissional desenvolvido com tecnologias web de ponta. Disponível para Windows, macOS e Linux, oferece uma experiência completa de comunicação VoIP com recursos avançados de gerenciamento de chamadas, histórico completo, agenda de contatos e controle de áudio.

### ✨ Características Principais

- 🎯 **Interface Moderna**: Design intuitivo e responsivo com Tailwind CSS
- 📞 **Chamadas Completas**: Suporte para chamadas de entrada e saída
- 🔇 **Controle de Áudio**: Mute, speaker e ajustes de volume
- 📋 **Histórico de Chamadas**: Registro completo com busca e filtros
- 👥 **Agenda de Contatos**: Gerenciamento completo de contatos com busca
- 🔄 **Transferência de Chamadas**: Transferência assistida e cega
- ⌨️ **DTMF**: Envio de tons DTMF durante chamadas
- 🔊 **Feedback de Áudio**: Sons para diferentes estados de chamada
- 💾 **Armazenamento Local**: Dados salvos localmente com Electron Store
- 🔐 **Auto-registro**: Reconexão automática com credenciais salvas

## 🛠️ Tecnologias

- **[Electron](https://www.electronjs.org/)** - Framework multiplataforma
- **[React](https://react.dev/)** - Biblioteca UI
- **[TypeScript](https://www.typescriptlang.org/)** - Tipagem estática
- **[SIP.js](https://sipjs.com/)** - Cliente SIP para WebRTC
- **[Tailwind CSS](https://tailwindcss.com/)** - Framework CSS utilitário
- **[Vite](https://vitejs.dev/)** - Build tool e dev server
- **[React Router](https://reactrouter.com/)** - Roteamento
- **[Electron Store](https://github.com/sindresorhus/electron-store)** - Armazenamento persistente

## 🚀 Instalação

### Pré-requisitos

- Node.js 18+ e npm
- Git

### Passos

1. **Clone o repositório**
   ```bash
   git clone https://github.com/adelson70/softphonejs.git
   cd softphonejs
   ```

2. **Instale as dependências**
   ```bash
   npm install
   ```

3. **Execute em modo desenvolvimento**
   ```bash
   npm run dev
   ```

4. **Gere o build de produção**
   ```bash
   npm run build
   ```

## 📖 Uso

### Primeiro Acesso

1. Ao iniciar o aplicativo, você será direcionado para a tela de registro
2. Informe suas credenciais SIP:
   - **Usuário SIP**: Seu nome de usuário/extension
   - **Senha SIP**: Sua senha
   - **Domínio SIP**: O servidor SIP (ex: `sip.suaempresa.com` ou `wss://servidor.com:8089`)
3. Clique em **Registrar** para conectar ao servidor SIP

### Funcionalidades

#### 📞 Discador
- Digite o número ou extensão diretamente
- Use o teclado numérico para discagem
- Visualize o status da conexão no topo da tela

#### 📋 Histórico de Chamadas
- Acesse todas as chamadas realizadas e recebidas
- Busque por número ou nome
- Adicione números do histórico aos contatos
- Limpe o histórico completo quando necessário

#### 👥 Contatos
- Adicione, edite e remova contatos
- Busque contatos por nome ou número
- Discagem rápida diretamente da lista de contatos

#### 🎛️ Durante a Chamada
- **Mute/Unmute**: Controle do microfone
- **Speaker**: Alternar entre fone de ouvido e viva-voz
- **Teclado DTMF**: Envie tons durante a chamada
- **Transferência**: Transfira chamadas (assistida ou cega)
- **Desligar**: Encerre a chamada

## 🏗️ Estrutura do Projeto

```
softphonejs/
├── electron/              # Código do processo principal Electron
│   ├── app/              # Configurações e paths
│   ├── ipc/              # Handlers IPC
│   ├── windows/          # Gerenciamento de janelas
│   └── main.ts           # Entry point Electron
├── src/
│   ├── app/              # Componentes principais e rotas
│   ├── components/       # Componentes React
│   │   ├── chamadas/     # Componentes de chamada
│   │   ├── contacts/     # Componentes de contatos
│   │   ├── historico/    # Componentes de histórico
│   │   └── ui/           # Componentes UI reutilizáveis
│   ├── pages/            # Páginas principais
│   ├── services/         # Serviços de negócio
│   ├── sip/              # Lógica SIP
│   │   ├── config/       # Configuração SIP
│   │   ├── core/         # Cliente SIP e handlers
│   │   ├── media/        # Áudio e DTMF
│   │   └── react/        # Hooks React para SIP
│   └── styles/           # Estilos globais
├── build/                # Ícones e assets
└── dist-electron/        # Build do Electron
```

## 🔧 Configuração

### Servidor SIP

O Echo suporta conexão via WebSocket (WSS/WS) a servidores SIP. Formatos aceitos:

- URL completa: `wss://servidor.com:8089/ws`
- Host e porta: `servidor.com:8089`
- Apenas domínio: `servidor.com` (usa porta padrão 8089)

**Nota**: A porta 5060 (SIP padrão) é bloqueada pelo Chromium para WebSocket. Use a porta WSS do seu PBX (geralmente 8088 ou 8089).

### Armazenamento

As configurações e dados são armazenados localmente usando Electron Store:
- Credenciais SIP (criptografadas)
- Histórico de chamadas
- Lista de contatos

## 📝 Scripts Disponíveis

- `npm run dev` - Inicia o aplicativo em modo desenvolvimento
- `npm run build` - Compila o projeto e gera os instaladores
- `npm run lint` - Executa o linter ESLint
- `npm run preview` - Preview do build de produção
- `npm run generate-icons` - Gera ícones para diferentes plataformas

## 🎨 Interface

A interface foi projetada com foco em:
- **Usabilidade**: Navegação intuitiva e clara
- **Acessibilidade**: Suporte a navegação por teclado
- **Responsividade**: Adaptação a diferentes tamanhos de tela
- **Feedback Visual**: Indicadores claros de estado e ações

## 🔒 Segurança

- Credenciais SIP armazenadas localmente de forma segura
- Comunicação via WSS (WebSocket Secure) quando disponível
- Sem transmissão de dados para servidores externos

## 🤝 Contribuindo

Contribuições são bem-vindas! Por favor:

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto é privado. Todos os direitos reservados.

## 🔗 Links

- **Repositório**: [GitHub](https://github.com/adelson70/softphonejs)
- **Website**: [Landing Page](https://echo-landingpage-eta.vercel.app/)

## 👨‍💻 Autor

Desenvolvido com ❤️ por [adelson70](https://github.com/adelson70)

---

<div align="center">

**Echo - Sua solução profissional para comunicação VoIP**

</div>
