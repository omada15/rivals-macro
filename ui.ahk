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
