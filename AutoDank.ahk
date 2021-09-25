#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; i: inv
; w: work
; n: notifs

; GetKeyState

Alt & f::
cmds := ["fish"]
PlsDo(cmds)
Return

Alt & h::
cmds := ["hunt"]
PlsDo(cmds)
Return

Alt & d::
cmds := ["dig"]
PlsDo(cmds)
Return

Alt & b::
cmds := ["beg"]
PlsDo(cmds)
Return

Alt & s::
Send, pls search{Enter}
Send {Tab}
Sleep 2000
Send {up}
Loop, 4
{
	Sleep 50
	Send {Tab}
}
Send {Enter}
Return

Alt & c::
Send, pls crime{Enter}
Send {Tab}
Sleep 2000
Send {up}
Loop, 4
{
	Sleep 50
	Send {Tab}
}
Send {Enter}
Return

Alt & p::
Send, pls pm{Enter}
Send {Tab}
Sleep 2000
Send {up}
Loop, 6
{
	Sleep 50
	Send {Tab}
}
Send {Enter}
Return

Alt & l::
Send, pls hl{Enter}
Send {Tab}
Sleep 2000
Send {up}
Loop, 5
{
	Sleep 50
	Send {Tab}
}
Send {Enter}
Return


PlsDo(cmds){

For k, v in cmds
	Send, pls %v%{Enter}
	Random rnd, 1500, 2500
	Sleep, rnd
Return
}



