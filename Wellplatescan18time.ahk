win_title:="WPR: C:\"
win_titlescan:="Scan: C:\"
SetTitleMatchMode, 2
CoordMode, Mouse, Window
#^d::
WinActivate, %win_title%
MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%.
Sleep, 1000
WinActivate, %win_title%
MouseGetPos, xpos2, ypos2 
MsgBox, The cursor is at X%xpos2% Y%ypos2%.
diffx := xpos2-xpos
diffy := ypos2-ypos
diffx := diffx/5
diffy := diffy/2
;Sleep, 1000
;MsgBox, Diffx is %diffx% diffy is %diffy%
return

#^s::
WinGet, active_id, ID, A
WinGetTitle, win_title, ahk_id %active_id%
MsgBox, the active window is%active_id% and title is %win_title%
Sleep, 2000
WinGet, active_id, ID, A
WinGetTitle, win_titlescan, ahk_id %active_id%
MsgBox, the active window is%active_id% and title is %win_titlescan%
return

#^a::
Loop, 600 {
WinActivate, %win_title%
ii := 0
Loop, 2 {
i := 0
yposa := ypos+diffy*ii
Loop, 6 {
xposa := xpos+diffx*i
WinActivate, %win_title%
MouseClick, right, xposa, yposa
i := i+1
Sleep, 9000
WinActivate, %win_titlescan%
MouseClick, left, 26, 76
aloop :=1
while aloop<2 {
Sleep,1000
PixelGetColor, colorofpix , 26, 76
if (colorofpix = 0x00FF00) {
aloop := 3
}
}
}
ii := ii+1
}
}
return

#^z::
WinActivate, %win_titlescan%
MouseClick, left, 26, 76
aloop :=1
while aloop<2 {
Sleep,1000
PixelGetColor, colorofpix , 26, 76
if (colorofpix = 0x00FF00) {
aloop := 3
MsgBox, Success
}
}
Esc::ExitApp
^!r::Reload 