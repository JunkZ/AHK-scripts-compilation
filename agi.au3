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
			Sleep(Random(3000, 3200))
			MouseClick($MOUSE_CLICK_LEFT, Random(750, 805), Random(667, 702), 1, Random(1, 5))
			Sleep(Random(6000, 6200))
			MouseClick($MOUSE_CLICK_LEFT, Random(624, 643), Random(551, 579), 1, Random(1, 5))
			Sleep(Random(6000, 6200))
			MouseClick($MOUSE_CLICK_LEFT, Random(687, 724), Random(555, 561), 1, Random(1, 5))
			Sleep(Random(5000, 5200))
			MouseClick($MOUSE_CLICK_LEFT, Random(798, 829), Random(562, 588), 1, Random(1, 5))
			Sleep(Random(2000, 2200))
			MouseClick($MOUSE_CLICK_LEFT, Random(925, 932), Random(438, 499), 1, Random(1, 5))
			Sleep(Random(6000, 6200))
			MouseClick($MOUSE_CLICK_LEFT, Random(938, 941), Random(512, 546), 1, Random(1, 5))
			Sleep(Random(2000, 2200))		
			MouseClick($MOUSE_CLICK_LEFT, Random(935, 951), Random(524, 553), 1, Random(1, 5))
			Sleep(Random(1000, 1500))				
			MouseClick($MOUSE_CLICK_LEFT, Random(1144, 1145), Random(387, 389), 1, Random(1, 5))
			Sleep(Random(3000, 3200))					
		WEnd
EndFunc