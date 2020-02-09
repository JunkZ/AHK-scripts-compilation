#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
Stalls()


Func _Terminate()
	Exit
 EndFunc   ;==>_Terminate

Func Stalls()
	Local $aMgp = 0
		While 1
			MouseClick($MOUSE_CLICK_LEFT, Random(1070, 1084), Random(529, 545), 1, 0)
			Sleep(Random(50, 100))
			MouseClick($MOUSE_CLICK_LEFT, Random(691, 699), Random(529, 540), 1, 0)
			Sleep(Random(50, 100, 1))
		WEnd
EndFunc