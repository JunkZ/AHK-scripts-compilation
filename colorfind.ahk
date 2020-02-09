;================================================
; Pixel Search Test
; GirlGamer
; ahk basic v1.0.48.05 or higher
; written 2012July22
; This test will attempt to check for the presence
; of a user selected color in the window of choice
; using increasing values of variation until it
; either fails completely or identifies the color.

; Because of the way PixelGetColor
; operates, it may find the color in a location different
; from the one selected when large areas of the window
; are picked for scanning.
;
; This routine attempts to use the entire target
; window as the scan area for the test.
;------------------------------------------------

#NoEnv
#SingleInstance, Force
#Persistent
#MaxThreadsPerHotkey 2
SetTitleMatchMode, 2
SetBatchLines, -1
SetKeyDelay, 50,50
DetectHiddenWindows, On
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
CoordMode, Tooltip, Screen

Splitpath, A_ScriptName, ofname, ofdir, ofext, ofnameNE, ofdrv
inifile = %ofnameNE% Output.ini
MsgBox,0x1021,PixelScan Test, Press Ctrl-Alt-P to begin the scan test.
IfMsgBox, Cancel
	ExitApp
Return

;------------------------------------------------
; Pixel Search Test
;------------------------------------------------
^!p:: ;<-- pixel search test
PixelSearchTest:

; make sure the game is in windowed mode
; color must be stable on screen for duration of test

SoundBeep, 750
Tooltip, Place mouse on the color in the window you wish to scan. Press the middle mouse button.,50,0
keywait, MButton, D
keywait, MButton
MouseGetPos, x, y, winid
WinGetPos, winxpos, winypos, winwidth, winheight, ahk_id %winid%
WinActivate, ahk_id %winid%
PixelGetColor, color, %x%, %y%, Alt RGB
MsgBox,0x1020,,color= %color% at location= %x%`,%y% ; The color of the enemy has been stored in variables X and Y
vari = 0
totalTime = 0
;coordmode Pixel, Relative
loop, 50
{	WinActivate, ahk_id %winid%
	fnTimeIt(1)
	Pixelsearch, foundx, foundy, 0, 0, %winwidth%, %winheight%, %color%, %vari%, fast RGB ;<-- fast = row-by-row top down search
	elapsed := fnTimeIt(0)
	totalTime := ( totalTime + elapsed)
	tooltip, search took %elapsed% ms, 50, 0
	if (ErrorLevel = 0)
	{	; color found at foundx, foundy with variation %vari%
		Break	
	}
	If (Errorlevel = 1)
	{	; not found in region
		vari += 3
		continue
	}
	If (Errorlevel = 2)
	{	ex = %Errorlevel%
		; search failed there was a problem that prevented the command from conducting the search.	
		MsgBox,0x1020,,Search failed with error %ex%
		ExitApp
	}
}
;CoordMode, Pixel, Screen
; code only gets here if search succeeds
mouseMove, %foundx%, %foundy%
sleep 100
Msgbox,0x1020,Line%A_LineNumber%,Color %color% found at %foundx%`,%foundy% with variance %vari% in %totalTime% milliseconds
MsgBox,0x1021,PixelScan Test, Press Ctrl-Alt-P to begin the scan test.
IfMsgBox, Cancel
	ExitApp
Return

fnTimeIt(runflag)
{	static starttime
	If (runflag)	
	{ starttime = %A_Tickcount%
	}
	Else
	{	endtime = %A_Tickcount%
		mselapsed := (endtime - starttime) ;<--time in mseconds
		;secelapsed := (mselapsed / 1000)
	}
	Return, mselapsed
}

;================================================
; Common controls
;------------------------------------------------

; program control
^!Esc::
GuiClose:
	ExitApp

; debugging hotkeys

^!F6:: ;<-- select file
	;FileSelectFile, OutputVar [, Options, RootDir\Filename, Prompt, Filter]
	FileSelectFile, infile, , , , (*.txt;*.ini)
	Run, Notepad %infile%
	Return
^!F7::KeyHistory
^!F8::ListHotkeys
^!F9::Pause
^!F10::ListVars
^!F11::ListLines
^!F12::Reload

;================================================