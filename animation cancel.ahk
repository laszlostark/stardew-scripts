#SingleInstance, Force
#IfWinActive, Stardew Valley

Toggle := 1

F5::
Toggle := !Toggle
return

SleepForFrames(x)
{
    Sleep, x * 16.666
}

Space::
If (Toggle) {
	While GetKeyState("Space", "P")
	{
		SendEvent, {r Down}{Delete Down}{RShift Down}
		SleepForFrames(1)
		SendEvent, {r Up}{Delete Up}{RShift Up}
	}
	
	SleepForFrames(1)
} else {
	SendEvent, {Space}
}
return


Up::w
Down::s
Left::a
Right::d


SC029::
	SendEvent, {sc01D Down} {sc00F Down}
	SleepForFrames(1)
	SendEvent, {sc01D Up} {sc00F Up}