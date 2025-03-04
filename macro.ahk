
Press(key, time) {
    Send "{" key " down}"
    Sleep time
    Send "{" key " up}"
}

Arena() {
    Press("w", 800)
    Press("d", 1500)
    Press("w", 500)
    Press("a", 1100)

    Send 1
    sleep 500

    Send "{Rbutton Down}"
    Send "{Lbutton Down}"
    Sleep 2000
    Send "{Lbutton Up}"
    Send "{Rbutton up}"
}

try {
    if WinExist("Roblox") {
        WinActivate("Roblox")
        Arena()
        Msgbox "done"
    } else {
        Msgbox "sped diddy kong"
    }
} catch Error as err {
    Msgbox "There was an error: " err.message
}
