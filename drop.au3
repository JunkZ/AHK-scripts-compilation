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
			MouseClick($MOUSE_CLICK_RIGHT, 1012, 533, 546, 2, Random(1, 3))
			Sleep(Random(25, 125))
			MouseClick($MOUSE_CLICK_LEFT, 1014, 590, 1, Random(1,3))
			Sleep(Random(3000, 3200, 1))
		WEnd
EndFunc