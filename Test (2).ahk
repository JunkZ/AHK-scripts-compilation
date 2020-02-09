$XButton2::
    KeyWait, Xbutton2, T.1
    if (ErrorLevel = 0){
        Send, {XButton2}
        return
    }
    MsgBox held
return