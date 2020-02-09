Tabs() {
SetTitleMatchMode, 2

ControlGet, OutputVar, Hwnd,,Chrome_RenderWidgetHostHWND1, Google Chrome

ControlFocus,,ahk_id %outputvar%

ControlSend, , {Control Down}{PgUp}{Control Up} , Google Chrome
}

Tabs()