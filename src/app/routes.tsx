import { HashRouter, Routes, Route } from 'react-router-dom'
import Home from '../pages/Home'
import Caller from '../pages/Caller'

export default function AppRoutes() {
  return (
    <HashRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/caller" element={<Caller />} />
      </Routes>
    </HashRouter>
  )
}
