z::
Toggle := !Toggle
loop {
	if not Toggle
		break
	SendInput {w down}
	sleep 852
	SendInput {w up}
	SendInput {a down}
	sleep 901
	SendInput {a up}
	SendInput {s down}
	sleep 950
	SendInput {s up}
	SendInput {d down}
	sleep 901
	Sendinput {d up}
	}
Return