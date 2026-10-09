import register
import strutils

proc parseHex(s: string): int =
    if s.startsWith("0x"):
        parseHexInt(s[2..^1])
    else:
        parseHexInt(s)

proc logicise*(input: seq[string]) =
    case input[0]
    of "0x00":
        discard
    of "0x01":
        quit(0)
    of "0x02":
        case input[1]
        of "0x05":
            MX = uint8(parseHex(input[2]))
        of "0x06":
            RX = uint8(parseHex(input[2]))
        of "0x07":
            DX = uint8(parseHex(input[2]))
        of "0x08":
            SX = uint8(parseHex(input[2]))
        of "0x09":
            GX = uint8(parseHex(input[2]))
        of "0x0A":
            TX = uint8(parseHex(input[2]))
        of "0x0B":
            PX = uint8(parseHex(input[2]))
        of "0x0C":
            ZX = uint8(parseHex(input[2]))
    else:
        discard