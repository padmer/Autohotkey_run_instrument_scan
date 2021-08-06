# Autohotkey_run_instrument_scan
A couple of ahk scripts to help set up (type in coordinates and move to them) and then click run in order to execute full spectral scans across a '
well plate using an LS55B fluorescence spectrometer


install authotkey https://www.autohotkey.com/

right "Get window title.ahk" choose "open with" choose "Select another app" choose "Authotkey"
double click "Get window title.ahk" to run it
select the window you want to control something in
press down <Ctrl>+<Win>+x to run the script

right click on "get window coordinates.ahk" and choose edit
paste in the new window title from clipboard (ctrl-c)
Save the file and load it by double clicking "get window coordinate.ahk"
select the window of interest and position the mouse over the button you want to press or the color you want to grab
press <win>+<ctrl>+d to run the script

right click on "Run scan when color red.ahk" and choose edit
paste in the values (overwriting the relevant values)
Check the number of clicks corresponds to what you want
save the file
double click the file to run it
when ready press <win>+<ctrl>+z to run the script
