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
			MouseClick($MOUSE_CLICK_LEFT, Random(1594, 1611), Random(389, 409), 1, Random(1, 12))
			Sleep(Random(200, 580, 1))
			MouseClick($MOUSE_CLICK_LEFT, Random(1454, 1477), Random(287, 311), 1, Random(3, 8))
			Sleep(Random(1000, 1330, 1))
		WEnd
EndFunc