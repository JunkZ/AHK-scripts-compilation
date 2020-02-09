Global $CheckSwap = RegRead("HKEY_CURRENT_USER\Control Panel\Mouse", "SwapMouseButtons")

Global $MousePrimary, $MouseSecondary

If $CheckSwap = 1 Then
	$MousePrimary = "right"
	$MouseSecondary = "left"
Else
	$MousePrimary = "left"
	$MouseSecondary = "right"
EndIf

; ************************************************* ;
; Change your settings here                         ;
; vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv ;
Global $ExitKey = "{ESC}"
Global $Color = 0x372D0D
Global $Color1 = 0x131313
Global $Color2 = 0x8A715D
Global $Color3 = 0x52451C
Global $Left = 422
Global $Left1 = 1017
Global $Left2 = 933
Global $Top = 272
Global $Top1 = 370
Global $Top2 = 515
Global $Right = 1198
Global $Right1 = 1018
Global $Right2 = 1164
Global $Bottom = 807
Global $Bottom1 = 371
Global $Bottom2 = 770
Global $ClickMouse = $MousePrimary
Global $ClickMouse1 = $MouseSecondary
Global $SearchResult
Global $20 = 20
Global $Dropdown
HotKeySet($ExitKey, '_Exit')

Func _Exit()
	Exit
EndFunc   ;==>_Exit

While 1
	Local $CameraRNG = Random(1, 10, 1)
	Local $RNG2000 = Random(250, 1000, 1)
	If $CameraRNG = 5 Then
		Send("{RIGHT DOWN}")
		Sleep($RNG2000)
		Send("{RIGHT UP}")
	EndIf

	$SearchResult = PixelSearch($Left, $Top, $Right, $Bottom, $Color)
	If Not @error Then
		MouseClick($ClickMouse1, $SearchResult[0], $SearchResult[1], 1, Random(1, 5))
		Sleep(Random(100, 150))
		Local $RNG = Random(40, 45)
		Local $Dropdown = $SearchResult[1] + $RNG
		MouseClick($ClickMouse, $SearchResult[0], $Dropdown, 1, Random(1, 5))
		Sleep(Random(1000, 1500))
	EndIf

	$SearchResult = PixelSearch($Left, $Top, $Right, $Bottom, $Color3)

	If Not @error Then
		MouseClick($ClickMouse1, $SearchResult[0], $SearchResult[1], 1, Random(1, 5))
		Sleep(Random(100, 150))
		Local $RNG = Random(40, 45)
		Local $Dropdown = $SearchResult[1] + $RNG
		MouseClick($ClickMouse, $SearchResult[0], $Dropdown, 1, Random(1, 5))
		Sleep(Random(1000, 1500))
	EndIf

	$SearchResult1 = PixelSearch($Left1, $Top1, $Right1, $Bottom1, $Color1)

	If Not @error Then
		Exit
		Send("{F2}")
		Sleep(Random(500, 1500))
		$SearchResult2 = PixelSearch($Left2, $Top2, $Right2, $Bottom2, $Color2)
		If @error Then
			MouseClick($ClickMouse, 1453, 288, 1, 1)
			Sleep(Random(5000, 5500))
			MouseClick($ClickMouse, 941, 568, 1, 1)
			Exit
		Else
			MouseClick($ClickMouse, $SearchResult2[0], $SearchResult2[1], 1, Random(1, 5))
			Sleep(Random(1000, 1500))
		EndIf
	EndIf
WEnd
