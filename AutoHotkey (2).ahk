#maxthreadsperhotkey 2

+^Wheelup::Click 1 ;Ctrl-Mousewheel=FastClick
+^Wheeldown::Click 1
+Wheelup::SoundSet +2, PCSPEAKER
+Wheeldown::SoundSet -2, PCSPEAKER ;Shift+Mousewheel=Volume

XButton2::MEDIA()
^XButton2::^XButton2
+XButton2::+XButton2
XButton1::Media_Prev
^XButton1::Media_Prev
+XButton1::Media_Prev

+^Media_Play_Pause::
Toggle := !Toggle
Loop
{
	If not Toggle
		break
	MouseClick, Left
	Sleep, 1
}

#ifwinactive, ahk_exe EscapeFromTarkov.exe
	Xbutton2::Xbutton2
	Xbutton1::Xbutton1
#ifwinactive, ahk_class R6Game
	Xbutton2::Xbutton2
	Xbutton1::Xbutton1
#ifWinActive, World of Warcraft
	Xbutton1::Xbutton1
	Xbutton2::MEDIADOTA()
	^XButton1::XButton1
	+XButton1::XButton1 
#ifwinactive, ahk_class LaunchUnrealUWindowClient
	Xbutton2::Xbutton2
	Xbutton1::Xbutton1
#ifwinactive, ahk_class SDL_app
	Xbutton2::MEDIADOTA()
	Xbutton1::Xbutton1
	^XButton1::XButton1
	+XButton1::XButton1 






MEDIA()
{
    KeyWait, Xbutton2, T.2
    if (ErrorLevel) {
        Send {ScrollLock Down}
        KeyWait,Xbutton2
        Send {ScrollLock Up}
    }
    else
        Send {Media_Next}
	return
}

MEDIADOTA()
{
    KeyWait, Xbutton2, T.3
    if (ErrorLevel) {
        Send {ScrollLock Down}
        KeyWait,Xbutton2
        Send {ScrollLock Up}
    }
    else
        Send {XButton2}
	return
}
#ifwinactive, ahk_exe EscapeFromTarkov.exe
ö::
	If GetKeyState("w")
	Send {w Up}
	Else
	Send {w Down}
	If GetKeyState("LShift")
	Send {LShift Up}
	Else
	Send {LShift Down}
	Return

return