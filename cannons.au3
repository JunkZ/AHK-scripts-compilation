#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
Cannons()


Func _Terminate()
	Exit
 EndFunc   ;==>_Terminate

Func Cannons()
	Local $aMgp = 0
		While 1
			MouseClick($MOUSE_CLICK_LEFT, Random(2548, 2609), Random(447, 517), 1, Random(1, 5))
			Sleep(Random(20000, 25000))
		WEnd
EndFunc