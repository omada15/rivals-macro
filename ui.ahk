MainGui := Gui() ; create the GUI
MainGui.Name := "Rivaler" ; names the window Rivaler (idk what that does)
MainGui.Title := "Rivaler" ; makes the windo title Rivaler

TabArr := ["Main", "Settings", "Log", "Credits"] ; creates a list of tabs
TabCtrl := MainGui.Add("Tab", "x0 y-1 w500 h240 -Wrap", TabArr) ; creates the tabs

TabCtrl.UseTab("Main") ; starts tab Main
MainGui.Add("DDL", "vAccount", ["Main", "Cpltk"])
MainGui.Add("DDL", "vWeapon", ["AR", "Sniper"])
MainGui.Add("DDL", "vMap", ["Arena", "Construct(NotFinished)"])

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
MainGui.Add("Text", "x35 y240 +BackgroundTrans", CurrentAction) ; changing variable 

MainGui.Show() ; shows the gui
