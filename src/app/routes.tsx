import { HashRouter, Routes, Route } from 'react-router-dom'
import Home from '../pages/Home'
import Caller from '../pages/Caller'
import Login from '../pages/Login'

export default function AppRoutes() {
  return (
    <HashRouter>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/home" element={<Home />} />
        <Route path="/caller" element={<Caller />} />
      </Routes>
    </HashRouter>
  )
}
