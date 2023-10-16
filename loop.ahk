#SingleInstance, force
 
; download compiled exe here https://we.tl/t-dNVSUqpdHy
 
InputBox, loopCount, Loop Count, How many times should it loop?, , 150, 150
 
If errorlevel = 1
    {
    MsgBox, App Canceled!
    ExitApp
    }
 
 
InputBox, duration, Duration, How many seconds per loop?, , 150, 150
 
If errorlevel = 1
    {
    MsgBox, App Canceled!
    ExitApp
    }
 
time := duration
time := time * 1000
 
InputBox, key, Define Key, What key is the macro on?, , 150, 150
 
 
If errorlevel = 1
    {
    MsgBox, App Canceled!
    ExitApp
    }
    
loop, %loopCount% {
  If WinExist("ahk_class FFXIVGAME")
    WinActivate
        else
        suspend
    Send {numpad0}
        sleep 1000
    Send {numpad0}
        sleep 1000
    Send {numpad0}
        sleep 1000
    Send {numpad0}
        sleep 2000
    Send %key%
        sleep %time%
}
 
MsgBox, Complete!
 
ExitApp
 
esc::exitapp
