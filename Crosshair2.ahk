﻿#SingleInstance, force
#NoTrayIcon
diam = 27
Gui -Caption +AlwaysOnTop
Gui margin,0,0
Gui add, ListView,  w%diam% h%diam% -Hdr -E0x200 BackgroundRed
SysGet, mon, Monitor
Gui show, % "x" monRight//2-(diam//2) " y" monBottom//2-(diam//2)
WinSet, Region, 9-0 10-5 9-5 8-6 7-6 6-7 5-8 5-9 4-10 4-11 0-10 0-16 4-15 4-16 5-17 5-18 6-19 7-20 8-20 9-21 10-21 9-26 15-26 14-21 15-21 16-20 17-20 18-19 19-18 19-17 20-16 20-15 24-16 24-10 20-11 20-10 19-9 19-8 18-7 17-6 16-6 15-5 14-5 15-0 9-0 12-9 10-5 9-5 8-6 7-6 6-7 5-8 5-9 4-10 4-11 8-13 4-15 4-16 5-17 5-18 6-19 7-20 8-20 9-21 10-21 12-17 14-21 15-21 16-20 17-20 18-19 19-18 19-17 20-16 20-15 16-13 20-11 20-10 19-9 19-8 18-7 17-6 16-6 15-5 14-5 12-9, A
return