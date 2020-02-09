#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")

Stalls()

Func _Terminate()
	Exit
EndFunc   ;==>_Terminate

Func Stalls()
	Global $fag = WinWait("Lvl", "", 10)
	While 1
		ControlClick($fag, "", 429066296, "left", 1)
		Sleep(Random(50, 100))
	WEnd
EndFunc   ;==>Stalls
