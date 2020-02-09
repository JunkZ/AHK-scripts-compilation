#NoEnv
SendMode Input
SetWorkingDir, % A_ScriptDir
#SingleInstance, Force

Numpad1::
	toggle:=1
	while (toggle)
	{
		send {Space}
		sleep, 1
	}
Numpad0::  toggle:=!toggle
