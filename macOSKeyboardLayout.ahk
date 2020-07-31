;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#NoEnv
#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; TODO: allow to detect whether actual Ctrl was pressed, or CMD key
; --------------------------------------------------------------
LWin::Ctrl

; --------------------------------------------------------------
; CMD + Tab
; --------------------------------------------------------------
LWin & Tab:: 
    AltTabMenu := true
    If GetKeyState("Shift","P")
        Send {Alt Down}{Shift Down}{Tab}
    else
        Send {Alt Down}{Tab}
return

#If (AltTabMenu)
    ~*LWin Up::
        Send {Shift Up}{Alt Up}
        AltTabMenu := false
	Send {Ctrl Up} 
    return
#If


; --------------------------------------------------------------
; Exit current app (cmd + q)
; --------------------------------------------------------------
^q::
WinGet, active_id, PID, A
run, taskkill /PID %active_id% /F,,Hide
return


; --------------------------------------------------------------
; Mac-like screenshots in Windows (requires Windows 10 Snip & Sketch)
; --------------------------------------------------------------

; Capture entire screen with CMD/WIN + SHIFT + 3
^+3::SendInput #{PrintScreen}

; Capture portion of the screen with CMD/WIN + SHIFT + 4
^+4::SendInput #+s


; --------------------------------------------------------------
; Space + CMD to change the language
; --------------------------------------------------------------
^Space::SendInput #{Space}


; --------------------------------------------------------------
; Space + CMD to change the language
; --------------------------------------------------------------
+Space::SendInput #{Space}


; --------------------------------------------------------------
; Clipboard History
; --------------------------------------------------------------
^+v::SendInput #v
