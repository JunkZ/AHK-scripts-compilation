#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
HotKeySet("{1}", "Logs")
Global $g_bPaused = False

While 1
	Sleep(1000)
Wend

Func _Terminate()
	Exit
EndFunc   ;==>_Terminate

Func Logs()
	$g_bPaused = Not $g_bPaused
	While $g_bPaused
        Sleep(100)
	WEnd
	While 1
		MouseClick($MOUSE_CLICK_LEFT)
		Sleep(Random(150, 200))
	WEnd
EndFunc   ;==>Logs

