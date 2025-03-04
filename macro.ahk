MainGui := Gui()
MainGui.Name := "Rivaler"
MainGui.Title := "Rivaler"

TabArr := ["Main", "Settings", "Log", "Credits"]
TabCtrl := MainGui.Add("Tab", "x0 y-1 w500 h240 -Wrap", TabArr)

TabCtrl.UseTab("Main")
MainGui.Add("DDL", "vAccount", ["Main", "Cpltk"])
MainGui.Add("DDL", "vWeapon", ["AR", "Sniper"])
MainGui.Add("DDL", "vMap", ["Arena", "Construct(NotFinished)"])

TabCtrl.UseTab("Settings")
MainGui.Add("Checkbox", "vOnTop", "Always on Top")
MainGui.Add("Text", , "Opacity")
MainGui.Add("Slider", "vOpacity", 100)

TabCtrl.UseTab("Log")
MainGui.Add("Text", , "Ligma")

TabCtrl.UseTab("Credits")
MainGui.Add("Text", , "WillDing loves Logan")

TabCtrl.UseTab()

CurrentAction := "Fun"

MainGui.Add("Text", "x0 y240 +BackgroundTrans", "Status:")
MainGui.Add("Text", "x35 y240 +BackgroundTrans", CurrentAction)

MainGui.Show()

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
