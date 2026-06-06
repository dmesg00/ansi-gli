;
; ################################################
; # ANSI-GLI - ANSI Greater & Less in ISO        #
; #                                              #
; # Author: dmesg00                               #
; # Contact: dmesg00@duck.com                     #
; # License: GPL v2.0                            #
; ################################################
; Version v2.7
;
; You've probably noticed that when you switch from an ISO keyboard 
; to an ANSI keyboard, the "<" and ">" keys are missing. When you 
; configure an ANSI keyboard as ISO (for example in Spanish), you can 
; use it in the same way as before, but those symbols are the only ones
; that you cannot type, so this script will solve the problem.
;
; Map the Alt + Z keys to show the "<" symbol
!z::
Send, <
return
;
; Map the Alt + X keys to show the ">" symbol
!x::
Send, >
return
;
; Map the AltGr + Shift (Left) + Z keys to show the "<" symbol
<^>!+z::
Send, <
return
;
; Map the AltGr + Shift (Left) + X keys to show the ">" symbol
<^>!+x::
Send, >
return
;
; Map the AltGr + Z keys to show the "<" symbol
<^>!z::
Send, <
return
;
; Map the AltGr + Z keys to show the ">" symbol
<^>!x::
Send, >
return
;
; If you use a 60% Keyboard, maybe need the following combinations:
;
; Map the AltGr + ' keys to show the "\" symbol (Spanish & Italian ISO config)
<^>!'::
Send, \
return
;
; Map the AltGr + ¡ keys to show the "~" symbol (Spanish ISO config)
;<^>!¡::
;Send, ~
;return
;
; Map the AltGr + - keys to show the "\" symbol (ANSI & UK ISO config)
<^>!-::
Send, \
return
;
; Map the AltGr + Esc keys to show the "\" symbol
<^>!*Escape::
Send, \
return
;
; German and French configuration extra key combinations
<^>!+w::
Send, <
return
;
<^>!w::
Send, <
return
;
!w::
Send, <
return
;
!y::
Send, <
return
;
<^>!+y::
Send, <
return
;
<^>!y::
Send, <
return
;
; Map Win + Alt to send AltGr command (for SK71 and SK64 keyboards)
LWin & LAlt::RAlt
return
;
; Map Alt + - to show ? simbol (for SK71 keyboard)
!-::
Send, ?
return
;
; Map Alt + '+' to show ¿ simbol (for SK71 keyboard)
LAlt & +::
Send, ¿
return
;
; Map Alt + c to show ? simbol (for SK71 keyboard)
!c::
Send, ?
return
;
; Map Alt + v to show ¿ simbol (for SK71 keyboard)
!v::
Send, ¿
return
;
; Map Alt + ' to show blacklash
!'::
Send, \
return
;
; Map Win + Esc to show blacklash
LWin & Escape::
Send, \
return
;
; Disable CapsLock (map CapsLock to Shift)
SetCapsLockState, AlwaysOff
CapsLock::LShift
return
;

