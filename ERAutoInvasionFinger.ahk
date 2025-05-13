#Requires AutoHotkey v2.0

; check if Elden Ring is running
if not WinExist("ELDEN RING™")
{
	MsgBox "Have Elden Ring running before running this script. Terminating script."
	ExitApp 0
}

; terminate script if Elden Ring closes
if WinWaitClose("ELDEN RING™")
{
	MsgBox "Elden Ring closed, therefore terminating script."
	ExitApp 0
}

; invasion loop
isFingering := True
#HotIf WinActive("ELDEN RING™")
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

; stop invasion loop
#HotIf WinActive("ELDEN RING™")
l::
{
	Global isFingering
	isFingering := False
}

#HotIf WinActive("ELDEN RING™")
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

; key press functions
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
