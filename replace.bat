set runLocation=%cd%
set targetFile=C:\Users\%UserName%\AppData\Local\slack\app-*
rem need to get the app-%largestNum% for the location
for /d %%i in (%targetFile%) do (
  rem echo "%%~nxi"
  if "!largest!" LSS "%%~nxi" (
    set largest=%%~nxi
  )
)
echo %largest%
set targetFolder=C:\Users\%UserName%\AppData\Local\slack\%largest%\resources\
pause
xcopy /s /y %runLocation%\knock_brush.mp3 %targetFolder%
pause