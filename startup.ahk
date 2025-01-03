﻿#Requires AutoHotkey v2.0



;ADMIN_SETUP
if (not A_IsAdmin) {
	try {
		if A_IsCompiled
			Run '*RunAs "' A_ScriptFullPath '" /restart'
		else
			Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
	} catch {
		
	}
}



;MOUSE_WHEEL_HOTKEYS
NumpadUp:: Click("WheelUp")
NumpadDown:: Click("WheelDown")