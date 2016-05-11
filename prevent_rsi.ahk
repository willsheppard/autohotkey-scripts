/*
  Set up alternative cut/copy/paste keys, to help prevent RSI.
  Also disable the default Ctrl-X, Ctrl-C, Ctrl-V keys to force me to learn the alternatives.
*/

; #persistent makes the AHK program stay open (in the notification area)
#persistent

LShift:: MsgBox [RSI Prevention] Use right-shift instead.
return

LCtrl:: MsgBox [RSI Prevention] Use right-ctrl instead.
return

/*** DISABLED, in favour of disabling left-Ctrl instead
; alternative cut/copy/paste 1
PrintScreen:: Send ^x
return
ScrollLock:: Send ^c
return
Pause:: Send ^v
return

; alternative cut/copy/paste 2
NumpadMult:: Send ^x
return
NumpadSub:: Send ^c
return
NumpadAdd:: Send ^v
return

; disable default cut/copy/paste
; (the $ prefix prevents this from being triggered by another hotkey)
$^x:: MsgBox [RSI Prevention] Use one of the alternative cut keys: "Print Screen" or "Numpad Multiply"
return

$^c:: MsgBox [RSI Prevention] Use the alternative copy keys: "Scroll Lock" or "Numpad Subtract"
return

$^v:: MsgBox [RSI Prevention] Use the alternative paste keys: "Break" or "Numpad Plus"
return

; Disable Ctrl-T (new tab in browser) as I don't want to stretch my finger that far because of RSI
$^t:: MsgBox [RSI Prevention] Click on the 'new tab' button with the mouse instead.
return

; Disable Ctrl-F ('Find' in browser) as I don't want to stretch my finger that far because of RSI
$^f:: MsgBox [RSI Prevention] Use the mouse (Options | Find) instead.
return

; Disable Ctrl-R (Search command history in console) as I don't want to stretch my finger that far because of RSI
; $^r:: MsgBox [RSI Prevention] Use Ctrl-D instead.
; return

; ^d:: Send ^r
; TODO: Allow Ctrl-C to interrupt in console (check Window title?)

/DISABLED ***/

;;;;;;;;;;;;;;;;;;; TESTS

; just testing
^j:: MsgBox, it works
return

^k:: MsgBox, this doesn't work
WinGetActiveTitle, Title
MsgBox, The active window is "%Title%"
return
