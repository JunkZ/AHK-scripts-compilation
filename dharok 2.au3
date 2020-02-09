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
			MouseClick($MOUSE_CLICK_LEFT, Random(2484, 2504), Random(681, 705), 1, Random(1, 5))
			Sleep(Random(301000, 308000))
		WEnd
EndFunc