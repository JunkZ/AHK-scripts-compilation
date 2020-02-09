F12::
Run, mmsys.cpl
WinWaitActive,Sound
if toggle=0
{
ControlSend,SysListView321,{Down}
ControlSend,SysListView321,{Down}
toggle=1
}
else
{
ControlSend,SysListView321,{Down}
toggle=0
}
Sleep, 50
ControlClick,Button2
ControlClick,OK
sleep, 50
WinActivate, XBMC
return
