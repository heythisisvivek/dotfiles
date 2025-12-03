@echo off
title TS to MP4 Converter

:menu
cls
echo -------------------------------------------
echo      TS to MP4 Converter - Select Path
echo -------------------------------------------
echo 1. D:\Junk\
echo 2. D:\Junk\IDM\
echo 3. D:\Junk\Videos\
echo 4. Custom Path
echo 5. Exit
echo -------------------------------------------
set /p choice=Choose an option (1-5): 

if "%choice%"=="1" set "target=D:\Junk" & goto convert
if "%choice%"=="2" set "target=D:\Junk\IDM" & goto convert
if "%choice%"=="3" set "target=D:\Junk\Videos" & goto convert
if "%choice%"=="4" goto custom
if "%choice%"=="5" exit
goto menu

:custom
cls
set /p target=Enter full directory path: 
if not exist "%target%" (
    echo Path does not exist!
    pause
    goto menu
)
goto convert

:convert
cls
echo -------------------------------------------
echo Using Path: %target%
echo -------------------------------------------
cd /d "%target%"

setlocal enabledelayedexpansion
for %%f in (*.ts) do (
    echo Converting: %%f
    ffmpeg -i "%%f" -c copy "%%~nf.mp4"
    
    if exist "%%~nf.mp4" (
        echo Conversion successful, deleting TS file...
        del "%%f"
    ) else (
        echo Error converting %%f
    )
)

echo -------------------------------------------
echo All conversions completed!
echo -------------------------------------------
pause
exit
