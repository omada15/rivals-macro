; Don't make function. these vars must be global
ui := Gui() ; create the GUI
ui.Name := "Rivaler" ; names the window Rivaler (idk what that does)
ui.Title := "Rivaler" ; makes the window title Rivaler

TabArr := ["Main", "Settings", "Log", "Credits"] ; creates a list of tabs
tabs := ui.Add("Tab", "x0 y-1 w500 h240 -Wrap", TabArr) ; creates the tabs

vAccount := ["Main", "Cpltk"] 
vWeapon := ["AR", "Sniper", "Minigun"] ; We will not be using minigun, but ok
vMap := ["Arena", "Construct(NotFinished)"]

tabs.UseTab("Main") ; starts tab Main
ui.Add("DDL", "vAccount", vAccount) ; 0,1
ui.Add("DDL", "vWeapon", vWeapon) ;0,1,2
ui.Add("DDL", "vMap", vMap) ;0,1

tabs.UseTab("Settings") ; starts tab Settings
ui.Add("Checkbox", "vOnTop", "Always on Top")
ui.Add("Text", , "Opacity")
ui.Add("Slider", "vOpacity", 100)

tabs.UseTab("Log") ; starts tab Log
ui.Add("Text", , "Balls") ; max why

tabs.UseTab("Credits") ; starts tab Credits
ui.Add("Text", , "WillDing loves Logan") ; We hold these truths to be self evident

tabs.UseTab() ; makes it so not using any tab

CurrentAction := "Fun" ; we will be using "idle", "dueling", and "waiting" (for rematch)

ui.Add("Text", "x0 y240 +BackgroundTrans", "Status:") ; creates Status name
ui.Add("Text", "x35 y240 +BackgroundTrans", ) ; changing variable 

ui.Show() ; shows the gui

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
    ui.Add("Text", , t)
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
