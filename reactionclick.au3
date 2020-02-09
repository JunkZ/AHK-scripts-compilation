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
		$coord = PixelSearch(0, 0, 785, 439, 0x4BDB6A)
		If Not @error Then
			MouseClick($MOUSE_CLICK_LEFT, 758, 439, 1, 0)
		EndIf
		If @error Then

		EndIf
	WEnd
EndFunc