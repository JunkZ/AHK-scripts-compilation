$XButton2::
    KeyWait, Xbutton2, T.1
    if (ErrorLevel) {
        Send {ScrollLock Down}
        KeyWait,Xbutton2
        Send {ScrollLock Up}
    }
    else
        Send {XButton2}
		return