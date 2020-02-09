#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
Stalls()


Func _Terminate()
	Exit
 EndFunc   ;==>_Terminate

Func Stalls()
	Local $aMgp = 0
		While 1
			$aCoord = PixelSearch(0, 0, 20, 300, 0x80875B, 10)
			If Not @error Then
				MouseClick($MOUSE_CLICK_LEFT, "", "X and Y are: " & $aCoord[0] & "," & $aCoord[1])
				EndIf
				Sleep(Random(2000, 2500))
		WEnd
EndFunc