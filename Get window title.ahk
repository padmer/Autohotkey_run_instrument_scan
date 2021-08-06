;prints the title of the currently active window
;- select the window you want to click in
;- press <win>+<ctrl>+x
;- The ID and title of the active window is displayed and copied to the clipboard (e.g. Get window title.ahk - Notepad)

#^x::
WinGet, active_id, ID, A
WinGetTitle, win_title, ahk_id %active_id%
MsgBox, the active window ID is%active_id% and title is %win_title%

clipboard := "
(
win_title := """ win_title """   
)"
return
