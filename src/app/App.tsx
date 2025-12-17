import AppRoutes from './routes'
import { SipProvider } from '../sip/react/SipProvider'

function App() {
  return (
    <SipProvider>
      <AppRoutes />
    </SipProvider>
  )
}

export default App
