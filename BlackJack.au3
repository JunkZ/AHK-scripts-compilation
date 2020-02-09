KnockOut()
{
Click right
MouseMove, 0, 70, 1, R
Click
}
PickPocket()
{
Click right
MouseMove,0 , 40, 1, R
Click
}
Eat()
{
PixelSearch, Px, Py, 544, 245, 724, 493, 0x846c59
if ErrorLevel=0 
	{
	Mousemove, %Px%, %Py%, 1
    Click
	}
}

1::KnockOut()
2::PickPocket()
3::Eat()