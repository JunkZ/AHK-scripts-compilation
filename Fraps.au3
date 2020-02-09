#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
BuyScript()

Func _Terminate()
	Exit
EndFunc   ;==>_Terminate

Func BuyScript()
	Local $aMgp = 0

		While 1
			MouseClick($MOUSE_CLICK_LEFT, Random(1569, 1587), Random(329, 346), 1, 8)
			Sleep(Random(100, 1380, 1))
		WEnd
EndFunc