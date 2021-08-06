#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;First run Get window title.ahk and Get window coordinates.ahk to get the necessary information to fill in below (should just be able to paste)
;Target color should be the color of the button (or some other indication of whether the scan is still running) when you want this program to click the target button.

SetTitleMatchMode, 2
CoordMode, Mouse, Window

xpos := 388
ypos := 76
targetColor := 0x1200E6
win_title := "AHK scripts"

;define the number of times it should hit the button
num_clicks:=3

;split target color into rgb
tr := format("{:d}","0x" . substr(targetColor,3,2))
tg := format("{:d}","0x" . substr(targetColor,5,2))
tb := format("{:d}","0x" . substr(targetColor,7,2))

tolerance := 20


colorofpix:= 0x241CED

#^z::

aloop:=0
while (aloop<num_clicks) {
Sleep, 2000
distance := tolerance + 50

while (distance>tolerance) {

Sleep,1000
WinActivate, %win_title%
PixelGetColor, colorofpix , %xpos%, %ypos%

;split pixel into rgb
pr := format("{:d}","0x" . substr(colorofpix,3,2))
pg := format("{:d}","0x" . substr(colorofpix,5,2))
pb := format("{:d}","0x" . substr(colorofpix,7,2))

;check distance
distance := sqrt((tr-pr)**2+(tg-pg)**2+(pb-tb)**2)

}
WinActivate, %win_title%
MouseClick, left, %xpos%, %ypos%
aloop := aloop + 1
}
return


Esc::ExitApp
