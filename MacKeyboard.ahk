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

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; Mac-like screenshots in Windows (requires Windows 10 Snip & Sketch)
; --------------------------------------------------------------

; Capture entire screen with CMD/WIN + SHIFT + 3
#+3::send #{PrintScreen}

; Capture portion of the screen with CMD/WIN + SHIFT + 4
#+4::#+s

; --------------------------------------------------------------
; media/function keys all mapped F keys
; --------------------------------------------------------------

F3::Send #{Tab}
F4::Send #a  ; Open Action center
F7::SendInput {Media_Prev}
F8::SendInput {Media_Play_Pause}
F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; --------------------------------------------------------------
; Clipboard History Win + Shift + V
; --------------------------------------------------------------
#+v::Send #v

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::Send, ^s

; Selecting
#a::Send, ^a

; Copying
#c::Send, ^c

; Pasting
#v::Send, ^v

; Cutting
#x::Send, ^x

; Opening
#o::Send ^o

; Finding
#f::Send ^f

; Undo
#z::Send ^z

; Redo
#+z::Send ^y

; New tab
#t::Send ^t

; close tab
#w::Send ^w

; New window or file: Win + N
#n::Send ^n

; New window or file Win + Shift + N
#+n::Send ^+n

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
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
    return

#If
; minimize windows
#m::WinMinimize,a

	; zoom in
#=::Send ^{=}

;zoom out
#-::Send ^-

; --------------------------------------------------------------
; Cursor arrows shortcuts (replace window positioning shortcuts)
; --------------------------------------------------------------
; Delete whole word
#Backspace::Send ^{Backspace}

; Move cursor to one word left
#Left::Send ^{Left}

; Move cursor to one word right
#Right::Send ^{Right}

; Move cursor to one word up
#Up::Send ^{Up}

; Move cursor to one word down
#Down::Send ^{Down}

; Move cursor to one word left while selecting
#+Left::Send ^+{Left}

; Move cursor to one word right while selecting
#+Right::Send ^+{Right}

; Move cursor to one word up while selecting
#+Up::Send ^+{Up}

; Move cursor to one word down while selecting
#+Down::Send ^+{Down}

; --------------------------------------------------------------
; CMD + Mouse shortcuts
; --------------------------------------------------------------

; Open in a new tab or window
; FIXME: doesn't work with double click
#LButton::
Send {Ctrl down}
Click
Send {Ctrl up}
return

; Open in a new tab and make it active 
; FIXME: doesn't work with double click
#+LButton::
Send {Ctrl down}
Send {Shift down}
Click
Send {Ctrl up}
Send {Shift up}
return


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

; Reopen Closed Tab: Win + Shift + T
#+t::Send ^+t

; Reload current tab Win + R
#r:: Send ^r

#IfWinActive

