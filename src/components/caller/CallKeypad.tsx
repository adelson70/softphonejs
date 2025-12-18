import { CallDialButton } from './CallDialButton'

type CallKeypadProps = {
  onKeyPress: (key: string) => void
  className?: string
  disabled?: boolean
}

const KEYPAD_KEYS: Array<{ key: string; letters?: string }> = [
  { key: '1' },
  { key: '2', letters: 'ABC' },
  { key: '3', letters: 'DEF' },
  { key: '4', letters: 'GHI' },
  { key: '5', letters: 'JKL' },
  { key: '6', letters: 'MNO' },
  { key: '7', letters: 'PQRS' },
  { key: '8', letters: 'TUV' },
  { key: '9', letters: 'WXYZ' },
  { key: '*' },
  { key: '0', letters: '+' },
  { key: '#' },
]

function cx(...classes: Array<string | undefined | false>) {
  return classes.filter(Boolean).join(' ')
}

export function CallKeypad({ onKeyPress, className, disabled }: CallKeypadProps) {
  return (
    <div className={cx('grid w-full grid-cols-3 gap-1.5', className)} role="group" aria-label="Discador numérico para ligação">
      {KEYPAD_KEYS.map(({ key, letters }) => (
        <CallDialButton 
          key={key} 
          label={key} 
          letters={letters} 
          disabled={disabled} 
          onClick={() => onKeyPress(key)}
        />
      ))}
    </div>
  )
}

