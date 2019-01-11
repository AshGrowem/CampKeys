; TODO 1. Finalize Logo

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Windows Shortcut Docs: https://support.microsoft.com/en-us/help/12445/windows-keyboard-shortcuts

;; Tray Icon & Tip
; Menu, Tray, Icon, CampKeys.ico ; Commented out to prevent "Error: Can't load icon", requires pre-compile removal
Menu, Tray, Tip, CampKeys

;; Admin Priveleges
; https://autohotkey.com/docs/commands/Run.htm#RunAs
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)")) {
    try {
        if A_IsCompiled {
					  Run *RunAs "%A_ScriptFullPath%" /restart
				}
        else {
					  Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
				}
    }
		MsgBox, Denied Admin
		TrayTip Denied Admin, Please select "Yes" at the UAC prompt. CampKeys requires Admin priveleges in order to function properly,, 2
		ExitApp
}

;; Reload Script on Left-Click Tray Icon
OnMessage(0x404, "AHK_NOTIFYICON")
AHK_NOTIFYICON(wParam, lParam, uMsg, hWnd) {
	if (lParam = 0x201) { ;WM_LBUTTONDOWN := 0x201
		Reload
	}
}

;; Remap LCmd w/ RCtrl in Registry
RegRead, Remap_LCmd_RCtrl, HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map
If Remap_LCmd_RCtrl = 0000000000000000020000001de05be000000000
	return
Else
	RegWrite, Reg_Binary, HKLM, SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map, 0000000000000000020000001de05be000000000
	TrayTip Logout for key remap, Please logout or restart your computer in order for the key remap (LCmd to RCtrl) to take effect,, 1

; #Include CampKeys_GUI.ahk

;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
;; Mac keyboard shortcuts
;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
;; NOTE: Follows official Mac shortcut docs (Order, Hotkeys, Sections, etc.): https://support.apple.com/en-us/HT201236

;; (Not in docs, but built into mac)
F3::Send #{Tab} ; F3: Mission Control (activates windows Task View)
F4::Send {RWin} ; F4: Launchpad (windows Start Menu)
^Q::WinClose, A ; Command-Q: Quit
^BS::Send {ShiftDown}{Home}{Shift Up}{Del} ; Delete Line

;; Cut, copy, paste, and other common shortcuts
;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
^H::WinHide, A ; Command-H: Hide the windows of the front app. To view the front app but hide all other apps, press Option-Command-H.
!^H::
WinSet, AlwaysOnTop, Off, A
WinMinimizeAll
return
^M::WinMinimize, A ; Command-M: Minimize the front window to the Dock (windows Taskbar). To minimize all windows of the front app, press Option-Command-M.
; !^H::
; WinGet, ActiveWindow, ID, A
; WinGet, PseudoArr, List
; loop, %PseudoArr% {
; 	Window := PseudoArr%A_Index%
; 	if (A_Index > 1 && Window != ActiveWindow)
; 		WinHide ahk_id %Window%
; 	continue
; }
; return
<^>^Space::Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\System Tools\Character Map.lnk" ; Show the Character Viewer (windows Character Map), from which you can choose emoji and other symbols.
<^>^F::Send {F11} ; Control-Command-F: Use the app in full screen, if supported by the app.
>^Tab::AltTab ; Command-Tab: Switch to the next most recently used app among your open apps.

;; Finder and system shortcuts
;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#IfWinActive ahk_exe Explorer.EXE
^I:: ; Command-I: Show the Get Info window for a selected file.
Hotkey, !Enter, Off
Send !{Enter}
Hotkey, !Enter, On
return
^BS::Send {Delete} ; Command-Delete: Move the selected item to the Trash (windows Recycle Bin).
#IfWinActive
^F3:: ; Command-Mission Control: Show the desktop.
minimizeAllToggle() {
	Static toggle := 1
	IfEqual, toggle, 1, WinMinimizeAll
	IfEqual, toggle, 0, WinMinimizeAllUndo
	toggle := !toggle
}
; ^F3::Send #d ; Command-Mission Control: Show the desktop. [NO-ANIMATION, LESS PORTALBE]

;; Document shortcuts
;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#IfWinNotActive, ahk_exe Code.exe ; VSCode already has its own Document Shortcuts, using both causes collisions
;; Deletion
!BS::Send {ShiftDown}{CtrlDown}{Left}{CtrlUp}{ShiftUp}{Del} ; Option-Delete: Delete the word to the left of the insertion point.
;; Navigation
; Big
^Up::Send {CtrlDown}{Home}{CtrlUp} ; Command–Up Arrow: Move the insertion point to the beginning of the document.
^Down::Send {CtrlDown}{End}{CtrlUp} ; Command–Down Arrow: Move the insertion point to the end of the document.
^Left::Send {Home} ; Command–Left Arrow: Move the insertion point to the beginning of the current line.
^Right::Send {End} ; Command–Right Arrow: Move the insertion point to the end of the current line.
; Small
!Left::Send {CtrlDown}{Left}{CtrlUp} ; Option–Left Arrow: Move the insertion point to the beginning of the previous word.
!Right::Send {CtrlDown}{Right}{CtrlUp} ; Option–Right Arrow: Move the insertion point to the end of the next word.
;; Selection
; Big
+^Up::Send {ShiftDown}{CtrlDown}{Home}{CtrlUp}{ShiftUp} ; Shift–Command–Up Arrow: Select the text between the insertion point and the beginning of the document.
+^Down::Send {ShiftDown}{CtrlDown}{End}{CtrlUp}{ShiftUp} ; Shift–Command–Down Arrow: Select the text between the insertion point and the end of the document.
+^Left::Send {ShiftDown}{Home}{ShiftUp} ; Shift–Command–Left Arrow: Select the text between the insertion point and the beginning of the current line.
+^Right::Send {ShiftDown}{End}{ShiftUp} ; Shift–Command–Right Arrow: Select the text between the insertion point and the end of the current line.
; Small
+!Left::Send {ShiftDown}{CtrlDown}{Left}{CtrlUp}{ShiftUp} ; Option–Shift–Left Arrow: Extend text selection to the beginning of the current word, then to the beginning of the following word if pressed again.
+!Right::Send {ShiftDown}{CtrlDown}{Right}{CtrlUp}{ShiftUp} ; Option–Shift–Right Arrow: Extend text selection to the end of the current word, then to the end of the following word if pressed again.
#IfWinNotActive

;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
;; Extras
;; ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

;; Chromium-based Browsers
;;───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
;; NOTE: Follows official Google Chrome shortcut docs (Order, Hotkeys, Sections, etc.): https://support.google.com/chrome/answer/157179?hl=en
;; (Not in docs)
#If WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe brave.exe")
XButton1::Send {Browser_Back} ; MouseButton1: Open the previous page in your browsing history for the current tab
XButton2::Send {Browser_Forward} ; MouseButton2: Open the next page in your browsing history for the current tab
;; Google Chrome feature shortcuts
^,:: ; Command+,: Open the Settings page in a new tab
Send !f
Send s
return
^Y:: ; Ctrl+Y: Open History
Hotkey, ^h, Off
Send ^h
Hotkey, ^h, On
return
!^I::Send {F12} ; Command+Alt+I: Open Developer Tools
;; Tab and window shortcuts
^[::Send {Browser_Back} ; Ctrl+[: Open the previous page in your browsing history for the current tab
^]::Send {Browser_Forward} ; Ctrl+[: Open the next page in your browsing history for the current tab
#If

;; Mouse Buttons
; button 1 usually starts at button furthest back on mouse
#IfWinNotActive, Overwatch
XButton1::Ctrl ; Remap mouse button 1 to Ctrl
XButton2::Alt ; Remap mouse button 2 to Alt
#IfWinNotActive

;; Window Snapping
!Enter:: WinMaximize, A ; Option-Enter: Maximize currently active window