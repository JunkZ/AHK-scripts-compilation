#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
HotKeySet("{ESC}", "_Terminate")
screenshot()


Func _Terminate()
	Exit
 EndFunc   ;==>_Terminate

Func screenshot()
	Local $aMgp = 0
		While 1
			Send("^Y")
			Sleep(900000)
		WEnd
EndFunc