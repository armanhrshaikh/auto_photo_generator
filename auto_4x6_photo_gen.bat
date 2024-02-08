@echo off

::Dependencies
::**ImageMagick:** A software suite used for creating, editing, composing, or converting bitmap images. You can download it from [ImageMagick's official website](https://imagemagick.org/script/download.php).
::set enviroment variable 
::done!

for /f "delims=" %%a in ('powershell -command "Get-Clipboard"') do set "input1=%%a"

for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set "datetime=%%a"
set "datetime=%datetime:~0,14%"
echo Generating 4x6 print-ready photo.

magick montage -mode concatenate -tile 4x2 -geometry 300x375+5+5 "%input1%" "%input1%" "%input1%" "%input1%" "%input1%" "%input1%" "%input1%" "%input1%" -density 300 -units pixelsperinch "photo%datetime%.png"

pause



