;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
;; GUI
;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#Include Class_CustomFont.ahk
font1 := New CustomFont("Fonts/Roboto-Regular.ttf")
⌘ := Chr(0x2318)

Gui, Color, f3f2ea
Gui Font, q5 s9, Roboto
Gui Add, Tab3,, General|App-Specific|Extras|Custom
;; General Tab
Gui Add, GroupBox, Section, Remap
RegRead, SwapCmdCtrl, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map
If SwapCmdCtrl = 0000000000000000020000001de05be000000000
  Checktype := "Checked1"
Else
  Checktype := "Checked0"
Gui, Add, Checkbox, yp+15 w44 %LCmdChecked% vLCmdCheckbox, Left -
Gui Font, s16
Gui, Add, Text, x+0 yp+1, %⌘%
Gui Font, s9
Gui, Add, Combobox, Limit Sort Choose1 x+17 yp+5 w60 %LCmdDefault% vLCmdCombo, LWin|RWin|Ctrl|Alt|Shift|LCtrl|RCtrl|LShift|RShift|LAlt|RAlt
Gui, Add, Checkbox, xs yp+15 w50 %RCmdChecked% vRCmdCheck, Right -
Gui Font, s16
Gui, Add, Text, x+0 yp+1, %⌘%
Gui Font, s9
Gui, Add, Combobox, Limit Sort Choose1 x+m yp+5 w60 vRCmdCombo, LWin|RWin|Ctrl|Alt|Shift|LCtrl|RCtrl|LShift|RShift|LAlt|RAlt
Gui Add, GroupBox, Section xs, Window Management
Gui, Add, Checkbox, yp+15 w100 %MissionControlChecked% vMissionControl, Mission Control
Gui, Add, Checkbox, xs y+0 w100 %LaunchpadChecked% vLaunchpad, Launchpad
Gui, Add, Combobox, Limit Choose1 Sort x+m yp-2 w60 vLaunchpadCombo, LWin|RWin|Ctrl|Alt|Shift|LCtrl|RCtrl|LShift|RShift|LAlt|RAlt
Gui, Add, Button,, &Reset All
;; App-Specific Tab
Gui, Tab, 2
Gui, Add, Radio, vMyRadio, Sample radio1
Gui, Add, Radio,, Sample radio2
;; Extras Tab
Gui, Tab, 3
Gui, Add, Edit, vMyEdit r5  ; r5 means 5 rows tall.
Gui, Show, Autosize Center
return

ButtonResetAll:
MsgBox, 4,, Reset all options on this page to their defaults?
IfMsgBox Yes
    MsgBox You pressed Yes.
else
    MsgBox You pressed No.
return

GuiClose:
GuiEscape:
Gui, Submit  ; Save each control's contents to its associated variable.
; MsgBox SwapCmdCtrlSetting: %SwapCmdCtrlSetting% SwapCmdCtrl: %SwapCmdCtrl%

If (SwapCmdCtrlSetting = 1 && SwapCmdCtrl = "")
{
  RegWrite, REG_BINARY, HKLM, SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map, 0000000000000000020000001de05be000000000
  TrayTip, CampKeys, You've made a system level key remap! Please logout or restart for changes to take affect.
}

If (SwapCmdCtrlSetting = 0 AND SwapCmdCtrl = "0000000000000000020000001de05be000000000")
{
  RegDelete, HKLM, SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map
  TrayTip, CampKeys, You've made a system level key remap! Please logout or restart for changes to take affect.
}