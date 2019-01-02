#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; https://support.apple.com/en-us/HT201236
; https://support.microsoft.com/en-us/help/12445/windows-keyboard-shortcuts

;; Reload Script on Left-Click Tray Icon
OnMessage(0x404, "AHK_NOTIFYICON")
AHK_NOTIFYICON(wParam, lParam, uMsg, hWnd)
{
	if (lParam = 0x201) ;WM_LBUTTONDOWN := 0x201
	{
		Reload
	}
}

Menu, Tray, Icon , cmd_key_blue.ico

; #Include CampKeys_GUI.ahk

;; General
;; ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
;; Window Management
F3::Send #{Tab} ; Mission Control (Task View)
>^Space::Send {Window}
F4::Send {RWin} ; Launchpad (Windows)
>^Tab::AltTab ; ⌘ Tab (Alt-Tab)
>^q::WinClose, A ; Quit, ⌘ Q (Close Window)
+>^m::WinMaximize, A ; Maximize
>^h::WinMinimize, A

;; Remap
; Mouse Buttons 4 & 5
; #1 usually starts at button furthest back
XButton1::Ctrl
XButton2::Alt

#IfWinActive, Overwatch
XButton1::XButton1
XButton2::XButton2
#IfWinActive

; RegWrite, Reg_Binary, HKLM, SYSTEM\CurrentControlSet\Control\Keyboard Layout, Scancode Map, 0000000000000000020000001de05be000000000

;; Deletion
!BS::Send {ShiftDown}{CtrlDown}{Left}{CtrlUp}{ShiftUp}{Del} ; Delete Word Left
>^BS::Send {ShiftDown}{Home}{Shift Up}{Del} ; Delete Line
#IfWinActive ahk_exe Explorer.EXE ; Finder Delete ⌘+delete
>^BS::Send {Delete}
#IfWinActive

;; Navigation
; Big
>^Left::Send {Home}
>^Right::Send {End}
>^Up::Send {CtrlDown}{Home}{CtrlUp}
>^Down::Send {CtrlDown}{End}{CtrlUp}
; Small
!Left::Send {CtrlDown}{Left}{CtrlUp}
!Right::Send {CtrlDown}{Right}{CtrlUp}

;; Highlight
; Big
+>^Left::Send {ShiftDown}{Home}{ShiftUp}
+>^Right::Send {ShiftDown}{End}{ShiftUp}
+>^Up::Send {ShiftDown}{CtrlDown}{Home}{CtrlUp}{ShiftUp}
+>^Down::Send {ShiftDown}{CtrlDown}{End}{CtrlUp}{ShiftUp}
; Small
+!Left::Send {ShiftDown}{CtrlDown}{Left}{CtrlUp}{ShiftUp}
+!Right::Send {ShiftDown}{CtrlDown}{Right}{CtrlUp}{ShiftUp}

;; Google Chrome & Brave
#If WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe brave.exe")
XButton1::Send {Browser_Back}
XButton2::Send {Browser_Forward}
!>^i::Send {F12} ; DevTools ⌘+alt+i
>^[::Send {Browser_Back} ; Back
>^]::Send {Browser_Forward} ; Forward
>^,:: ; Mac Settings ⌘+,
Send !f
Send s
return
>^y:: ; Open History
Hotkey, >^h, Off
Send >^h
Hotkey, >^h, On
return
#If

;; Extras
;; ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

!Enter::Send #{Up} ; Moom Opt+Enter Fullscreen
; !Enter:: WinMaximize, A ; Moom Opt+Enter Fullscreen