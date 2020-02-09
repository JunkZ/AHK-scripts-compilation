^Wheelup::Click 2 ;Ctrl-Mousewheel=FastClick
^Wheeldown::Click 2
+Wheelup::SoundSet +2
+Wheeldown::SoundSet -2 ;Shift+Mousewheel=Volume

#ifWinActive Dota 2
XButton2::XButton2
#ifWinActive Dota 2
XButton1::XButton1 ;If Dota 2 is running = MouseButtons

#IfWinNotActive Dota 2
XButton2::Media_Next
#IfWinNotActive Dota 2
XButton1::Media_Prev ;If Dota 2 Is not running = Media Next/prev

Theatre() ;Function For Setting Theatre Mode On Youtube
{
PixelSearch, Px, Py, 136, 504, 136, 504, F1F1F1, 3, Fast ; Is there white pixel to left of video?
if ErrorLevel ;if yes
			ControlClick, x162 y495, ahk_class Chrome_WidgetWin_1, , RIGHT ;Right click there, to set theatre mode on
}
PlayPause() ;Function For Play/Pausing Video/Streams
{
SetTitleMatchMode, 2 ;Declares not exact title needed, just a part of it
IfWinExist, Twitch ;If Active window contains "Twitch"
	{
		ControlClick, x104 y1004, ahk_class Chrome_WidgetWin_1 ;Pause/Unpause Non-Theatre Twitch Streams on Left Monitor
		Return
	}
IfWinExist, YouTube
	{
		Theatre() ;Calls on the Function Theatre
		ControlClick, x951 y635, ahk_class Chrome_WidgetWin_1 ;Pause/Unpause Youtube Videos On Left Monitor
		Return
	}
}

Tabs() ;Function For Cycle Tabs In Chrome
{
SetTitleMatchMode, 2 ;Declares not exact title needed, just a part of it

ControlGet, OutputVar, Hwnd,,Chrome_RenderWidgetHostHWND1, Google Chrome

ControlFocus,,ahk_id %outputvar%

ControlSend, , ^{PgDn}, Google Chrome
}
CloseTab() ;Function For Cöpse Tabs In Chrome
{
SetTitleMatchMode, 2 ;Declares not exact title needed, just a part of it

ControlGet, OutputVar, Hwnd,,Chrome_RenderWidgetHostHWND1, Google Chrome

ControlFocus,,ahk_id %outputvar%

ControlSend, , {CtrlUp}^{w}, Google Chrome
}
+^w::CloseTab() ;Call for Function CloseTab
+Media_Play_Pause::PlayPause() ; Call for Function PlayPause
^Media_Play_Pause::Tabs() ; Call for Function Tabs
return