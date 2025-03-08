; Don't make function. these vars must be global
; In math we are going to have to finish the save mechanism and getting outputs from the gui.

MainGui := Gui() ; create the GUI
MainGui.Name := "Rivaler" ; names the window Rivaler (idk what that does)
MainGui.Title := "Rivaler" ; makes the windo title Rivaler

CurrentValue := 0


TabArr := ["Main", "Settings", "Log", "Credits"] ; creates a list of tabs
TabCtrl := MainGui.Add("Tab", "x0 y-1 w500 h240 -Wrap", TabArr) ; creates the tabs

array_time_data := []

f1::{ ; timer
    global
    static toggle := false
    if toggle := !toggle
        start_stop:=A_TickCount
    else
        array_time_data.Push(A_TickCount-start_stop)
}


TabCtrl.UseTab("Main") ; starts tab Main
GuiCtrl := MainGui.Add("Text",, "Alt?")
GuiCtrl := MainGui.Add("Checkbox", "vAlt", "")

GuiCtrl := MainGui.Add("Text",, "Sniper?")
GuiCtrl := MainGui.Add("Checkbox", "vSniper", "")


GuiCtrl := MainGui.Add("Text",, "Construction? (Risky)")
GuiCtrl := MainGui.Add("Checkbox", "vConstruction", "")

TabCtrl.UseTab("Settings") ; starts tab Settings
GuiCtrl := MainGui.Add("Checkbox", "vOnTop", "Always on Top")
; isChecked := ControlGetChecked(Control [, WinTitle, WinText, ExcludeTitle, ExcludeText]) idk how this works


MainGui.Add("Text", , "Opacity")
MainGui.Add("Slider", "vOpacity", 100)

LastAction := "Something"

TabCtrl.UseTab("Log") ; starts tab Log
MainGui.Add("Text", , LastAction)

TabCtrl.UseTab("Credits") ; starts tab Credits
MainGui.Add("Text", , "WillDing loves Logan")

TabCtrl.UseTab() ; makes it so not using any tab

CurrentAction := "Fun" ; variable

MainGui.Add("Text", "x0 y240 +BackgroundTrans", "Status:") ; creates Status name
MainGui.Add("Text", "x35 y240 +BackgroundTrans", CurrentAction) ; changing variable 
 
MainGui.Show() ; shows the gui

Press(key, time) {
    ;Send "{" key " down}"
    Sleep time
    ;Send "{" key " up}"
}
log(t) { ; please let those variables be global, if not imma kill myself
    tabs.UseTab("Log")
    ui.Add("Text", , t)
    tabs.UseTab()
}

Arena() {
    log("Started Arena Movement")
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
    tabs.UseTab("Log")
    ui.Add("Text", , t) ;Warning: This global variable appears to never be assigned a value. SPECIFICALLY T
    tabs.UseTab()
    if !WinExist("Roblox") {
        WinActivate("Roblox")
        log("hi")
        Arena()
        Msgbox "done"
    } else {
        Msgbox "sped diddy kong"
    }
} catch Error as err {
    Msgbox "There was an error: " err.message
}

