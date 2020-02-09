#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
Intro()
BuyScript()


Func _Terminate()
	Exit
 EndFunc   ;==>_Terminate

 Func Intro()
   MouseClick($MOUSE_CLICK_LEFT, 971, 565, 1, Random(1, 7))
   Send("{F4 1}")
   MouseClick($MOUSE_CLICK_LEFT, Random(1117, 1130), Random(602, 616), 1, Random(1, 7))
   Sleep(Random(1000, 1930, 1))
   MouseClick($MOUSE_CLICK_LEFT, 1322, 358, 1, 1)
EndFunc

Func BuyScript()
	Local $aMgp = 0

		While 1
			MouseClick($MOUSE_CLICK_LEFT, Random(1141, 1156), Random(625, 639), 1, Random(1, 12))
			Sleep(Random(1450, 1680, 1))
			MouseClick($MOUSE_CLICK_LEFT, Random(999, 1022), Random(521, 546), 1, Random(3, 8))
			Sleep(Random(25, 150, 1))
			Send("{F4 1}")
			Sleep(Random(700, 930, 1))
			MouseClick($MOUSE_CLICK_LEFT, Random(1117, 1130), Random(602, 616), 1, Random(1, 7))
			Sleep(Random(300, 680, 1))
		WEnd
EndFunc