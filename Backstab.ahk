toggle = 0
#MaxThreadsPerHotkey 20

$E::
	toggle := !toggle
	while toggle
	{
		Random, Ran, 104, 143
		sleep, Ran
		send, {e}
		If !toggle
			Break
	}
return