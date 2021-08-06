;first run getWindowTitle so you know what you should write inside the quotation marks below
;dont forget to save and re-run this file if you have made changes otherwise they won't be taken into account.


;win_title:="E.g. scan software"

win_title:="AHK scripts"

;Set up coordinate mode so that it is relative to each window
SetTitleMatchMode, 2
CoordMode, Mouse, Window

;You can run the script by pressing hotkeys <win>+<ctrl>+d
#^d::
WinActivate, %win_title%
MouseGetPos, xpos, ypos 
PixelGetColor, colorofpix , %xpos%, %ypos%
MsgBox, The cursor is at X%xpos% Y%ypos% and the color is %colorofpix%
clipboard := "
(
xpos := " xpos "
ypos := " ypos "
targetColor := " colorofpix "
win_title := """ win_title """   
)"
return