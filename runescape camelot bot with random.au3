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
			MouseClick($MOUSE_CLICK_LEFT, Random(1510, 1526), Random(369, 385), 1, 8)
			Sleep(Random(100, 1780, 1))
		WEnd
EndFunc