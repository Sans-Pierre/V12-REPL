import logic
import os
import strutils
import register

discard execShellCmd("cls")

echo "\e[34mWelcome to the V12 REPL!\e[0m\n"
echo "\e[32mV12 Version 1\e[0m\n"
echo "\n"

while true:
    stdout.write("\e[0m\e[31m-> \e[35m")
    let textInput = readLine(stdin)

    let input = textInput.split

    if input[0] == "exit":
        echo "\e[0m"
        quit(0)
    elif input[0] == "print":
        echo "\e[0mMX =", MX
        echo "RX =", RX
        echo "DX =", DX
        echo "SX =", SX
        echo "GX =", GX
        echo "TX =", TX
        echo "PX =", PX
    elif input[0] == "clear":
        discard execShellCmd("cls")
        echo "\e[32mV12 Version 1\e[0m\n"
    else:
        logicise(input)