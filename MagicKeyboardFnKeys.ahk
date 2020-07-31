#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; --------------------------------------------------------------
; Media/function keys all mapped F keys
; --------------------------------------------------------------

F3::SendInput #{Tab}
;F4::SendInput #a  ; Open Action center  (Disabling it because found myself acciedently activate it when looking for F5)
F7::SendInput {Media_Prev}
F8::SendInput {Media_Play_Pause}
F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}
