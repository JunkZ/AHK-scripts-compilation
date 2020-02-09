#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
HotKeySet ("{1}", "Logs")

While 1
	Sleep(1000)
Wend
Func _Terminate()
	Exit
EndFunc   ;==>_Terminate

Func Logs()
Local $iCheckSum = PixelChecksum(1231, 391, 1419, 402, "", "",1)
			While 1
				While $iCheckSum Not PixelChecksum(1231, 391, 1419, 402, "", "",1)
				Send ("{a}")
			Wend
			MouseClick($MOUSE_CLICK_LEFT, Random(1001, 1025), Random(520, 541), 1, Random(1, 3))
			Sleep(Random(50, 100))
			$SearchResult = PixelSearch(988, 515, 1162, 761, 0x82633B)
			If Not @error Then
				MouseClick($MOUSE_CLICK_LEFT, $SearchResult[0], $SearchResult[1], 1, Random(1, 3))
				Sleep(Random(1000, 1500))
			EndIf
EndFunc
