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
			MouseClick($MOUSE_CLICK_LEFT, Random(766, 796), Random(491, 524), 1, Random(1, 5))			
		WEnd
EndFunc