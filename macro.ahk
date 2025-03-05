; Don't make function. these vars must be global
; In math we are going to have to finish the save mechanism and getting outputs from the gui.

ui := Gui() ; create the GUI
ui.Name := "Rivaler" ; names the window Rivaler (idk what that does)
ui.Title := "Rivaler" ; makes the window title Rivaler

TabArr := ["Main", "Settings", "Log", "Credits"] ; creates a list of tabs
tabs := ui.Add("Tab", "x0 y-1 w500 h240 -Wrap", TabArr) ; creates the tabs

vAccount := ["Main", "Cpltk"] 
vWeapon := ["AR", "Sniper"] 
vMap := ["Arena", "Construct(NotFinished)"]

tabs.UseTab("Main") ; starts tab Main
ui.Add("DDL", "vAccount", vAccount) ; 0,1
mainAccount :=  ui.value(ui.Add("DDL", "vAccount", vAccount))
ui.Add("DDL", "vWeapon", vWeapon) ;0,1
sniper := ui.value(ui.Add("DDL", "vWeapon", vWeapon))
ui.Add("DDL", "vMap", vMap) ;0,1
construction := ui.value(ui.Add("DDL", "vMap", vMap))

tabs.UseTab("Settings") ; starts tab Settings
ui.Add("Checkbox", "vOnTop", "Always on Top")
; IsChecked := ControlGetChecked(Control , WinTitle, WinText, ExcludeTitle, ExcludeText)
; AoT := IsChecked("vOnTop",)
ui.Add("Text", , "Opacity")
ui.Add("Slider", "vOpacity", 100)

tabs.UseTab("Log") ; starts tab Log
ui.Add("Text", , "TestingText(WillFinishLater)") ; 

tabs.UseTab("Credits") ; starts tab Credits
ui.Add("Text", , "Dilliam Wing wants Logan in his life forever") ; We hold these truths to be self evident
ui.Add("Text", ,"Creators: WHY_WILe and willlovesfun") ; we need to frame them

tabs.UseTab() ; makes it so not using any tab

CurrentAction := "Fun" ; we will be using "idle", "dueling", and "waiting" (for rematch)

ui.Add("Text", "x0 y240 +BackgroundTrans", "Status:") ; creates Status name
ui.Add("Text", "x35 y240 +BackgroundTrans", ) ; changing variable that indicates action

ui.Show() ; shows the gui after creating it

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

