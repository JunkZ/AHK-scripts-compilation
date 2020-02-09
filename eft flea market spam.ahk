Random, rand, 0.25, 0.75

Rbutton::
loops := 50
Loop {
if (loops > 0) {
	MouseClick, left,,,,.02
	sleep, rand
	send {Y}
	loops := loops - 1
} else {
	return
}
}
