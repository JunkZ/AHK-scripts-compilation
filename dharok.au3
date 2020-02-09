#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
Dharok()


Func _Terminate()
	Exit
 EndFunc   ;==>_Terminate

Func Dharok()
	Local $aMgp = 0
		While 1
			MouseClick($MOUSE_CLICK_LEFT, Random(2498, 2519), Random(568, 585), 1, Random(1, 5))
			Sleep(Random(10, 100))
			MouseClick($MOUSE_CLICK_LEFT, Random(2498, 2519), Random(568, 585), 1, Random(1, 5))
			Sleep(Random(40000, 50000, 1))
		WEnd
EndFunc