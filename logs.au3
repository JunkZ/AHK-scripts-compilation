#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
HotKeySet("{1}", "Logs")
CheckPixels()
Compare()

While 1
	Sleep(1000)
WEnd


Func _Terminate()
	Exit
EndFunc   ;==>_Terminate

Func CheckPixels()
	Global $iCheckSum = PixelChecksum(1228, 334, 1418, 347)
EndFunc

Func Compare()
	While 1
		While $iCheckSum <> PixelChecksum(1228, 334, 1418, 347)
			Sleep(Random(250, 500))
			Logs()
			CheckPixels()
		WEnd
	WEnd
EndFunc

Func Logs()
	MouseClick($MOUSE_CLICK_LEFT, Random(1001, 1025), Random(520, 541), 1, Random(1, 3))
	Sleep(Random(50, 100))
	$SearchResult = PixelSearch(988, 515, 1162, 761, 0x714D0E)
	If Not @error Then
		MouseClick($MOUSE_CLICK_LEFT, $SearchResult[0], $SearchResult[1], 1, Random(1, 3))
		Sleep(Random(1000, 1500))
	EndIf
EndFunc   ;==>Logs

