#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
Stalls()


Func _Terminate()
	Exit
 EndFunc   ;==>_Terminate

Func Stalls()
	Local $fag = WinWait("[Clicker]", "", 10)
	Local $aMgp = 0
	Local $controlid = 1324947224
		While 1
			Controlclick($fag, "", $controlid, left, 1, 1268, 951)
			Sleep(Random(50, 100))

		WEnd
EndFunc