#Requires AutoHotkey v2.0
isFingering := True
i::
{
	Global isFingering
	isFingering := True
	While isFingering
	{
		UseBloodyFinger()
		if isFingering = False
			Break
		UseRecursantFinger()
		if isFingering = False
			Break
	}
}


l::
{
	Global isFingering
	isFingering := False
}

y::
{
	ExitApp 0
}


UseBloodyFinger()
{
	PressEscape()
	PressUp()
	PressUp()
	PressE()
	PressUp()
	PressUp()
	PressE()
	PressRight()
	Sleep 400
	PressE()
	Sleep 3000
}

UseRecursantFinger()
{
	PressEscape()
	PressUp()
	PressUp()
	PressE()
	PressUp()
	PressUp()
	PressRight()
	PressE()
	PressRight()
	Sleep 400
	PressE()
	Sleep 3000
}

PressEscape()
{
	Send "{Esc Down}"
	Sleep 25
	Send "{Esc Up}"
	Sleep 100
}

PressE()
{
	Send "{e Down}"
	Sleep 25
	Send "{e Up}"
	Sleep 100
}

PressUp()
{
	Send "{Up Down}"
	Sleep 25
	Send "{Up Up}"
	Sleep 100
}

PressRight()
{
	Send "{Right Down}"
	Sleep 25
	Send "{Right Up}"
	Sleep 100
}