MainGui := Gui() ; create the GUI
MainGui.Name := "Rivaler" ; names the window Rivaler (idk what that does)
MainGui.Title := "Rivaler" ; makes the windo title Rivaler

TabArr := ["Main", "Settings", "Log", "Credits"] ; creates a list of tabs
TabCtrl := MainGui.Add("Tab", "x0 y-1 w500 h240 -Wrap", TabArr) ; creates the tabs

vAccount := ["Main", "Cpltk"]
vWeapon := ["AR", "Sniper", "Minigun"]
vMap := ["Arena", "Construct(NotFinished)"]

TabCtrl.UseTab("Main") ; starts tab Main
MainGui.Add("DDL", "vAccount", vAccount) ; 0,1
MainGui.Add("DDL", "vWeapon", vWeapon) ;0,1,2
MainGui.Add("DDL", "vMap", vMap) ;0,1

TabCtrl.UseTab("Settings") ; starts tab Settings
MainGui.Add("Checkbox", "vOnTop", "Always on Top")
MainGui.Add("Text", , "Opacity")
MainGui.Add("Slider", "vOpacity", 100)

TabCtrl.UseTab("Log") ; starts tab Log
MainGui.Add("Text", , "Ligma")

TabCtrl.UseTab("Credits") ; starts tab Credits
MainGui.Add("Text", , "WillDing loves Logan")

TabCtrl.UseTab() ; makes it so not using any tab

CurrentAction := "Fun" ; variable

MainGui.Add("Text", "x0 y240 +BackgroundTrans", "Status:") ; creates Status name
MainGui.Add("Text", "x35 y240 +BackgroundTrans", ) ; changing variable 

MainGui.Show() ; shows the gui
