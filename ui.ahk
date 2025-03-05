ui := Gui() ; create the GUI
ui.Name := "Rivaler" ; names the window Rivaler (idk what that does)
ui.Title := "Rivaler" ; makes the windo title Rivaler

CurrentValue := 0


TabArr := ["Main", "Settings", "Log", "Credits"] ; creates a list of tabs
tabs := ui.Add("Tab", "x0 y-1 w500 h240 -Wrap", TabArr) ; creates the tabs

vAccount := ["Mainacc", "Cpltk"]
vWeapon := ["AR", "Sniper"]
vMap := ["Arena", "Construct(NotFinished)"]

tabs.UseTab("Main") ; starts tab Main
GuiCtrl := ui.Add("DDL", "vAccount", vAccount) ; 0,1
;CurrentValue:= GuiCtrl.Type()
;vAccountB := CurrentValue

GuiCtrl := ui.Add("DDL", "vWeapon", vWeapon) ;0,1,2
;CurrentValue := GuiCtrl.Type()
;vWeaponB := CurrentValue

GuiCtrl := ui.Add("DDL", "vMap", vMap)
;CurrentValue := GuiCtrl.Type()
;vMapB := CurrentValue

tabs.UseTab("Settings") ; starts tab Settings
GuiCtrl := ui.Add("Checkbox", "vOnTop", "Always on Top")
; isChecked := ControlGetChecked(Control [, WinTitle, WinText, ExcludeTitle, ExcludeText]) idk how this works

ui.Add("Text", , "Opacity")
ui.Add("Slider", "vOpacity", 100)

LastAction := "Something"

tabs.UseTab("Log") ; starts tab Log
ui.Add("Text", , LastAction)

tabs.UseTab("Credits") ; starts tab Credits
ui.Add("Text", , "WillDing loves Logan")

tabs.UseTab() ; makes it so not using any tab

CurrentAction := "Fun" ; variable

ui.Add("Text", "x0 y240 +BackgroundTrans", "Status:") ; creates Status name
ui.Add("Text", "x35 y240 +BackgroundTrans", CurrentAction) ; changing variable 
 
ui.Show() ; shows the gui

Press(key, time) {
    ;Send "{" key " down}"
    Sleep time
    ;Send "{" key " up}"
}
log(t) { ; please let those variables be global, if not imma kill myself
    global tabs
    tabs.UseTab("Log")
    global ui
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
    if true {
        tabs.UseTab("Log")
        ui.Add("Text", , "Roblox not found")
        log("hi")
        ;WinActivate("Roblox")
        Arena()
        Msgbox "done"
    } else {
        Msgbox "sped diddy kong"
    }
} catch Error as err {
    throw err
}
