import { HashRouter, Routes, Route } from 'react-router-dom'
import Caller from '../pages/Caller'
import Login from '../pages/Login'
import Historico from '../pages/Historico'
import Contatos from '../pages/Contatos'
import { RequireRegistered } from '../sip/react/RequireRegistered'
import { IncomingCallOverlay } from '../components/caller/IncomingCallOverlay'

export default function AppRoutes() {
  return (
    <HashRouter>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route
          path="/caller"
          element={
            <RequireRegistered>
              <Caller />
            </RequireRegistered>
          }
        />
        <Route
          path="/historico"
          element={
            <RequireRegistered>
              <Historico />
            </RequireRegistered>
          }
        />
        <Route
          path="/contatos"
          element={
            <RequireRegistered>
              <Contatos />
            </RequireRegistered>
          }
        />
      </Routes>
      <IncomingCallOverlay />
    </HashRouter>
  )
}
