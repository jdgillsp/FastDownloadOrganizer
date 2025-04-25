@echo off
setlocal enabledelayedexpansion

:: File extension groups
set "VIDEO_EXT=mp4 avi mov wmv mkv"
set "IMAGE_EXT=jpg jpeg png gif bmp"
set "AUDIO_EXT=mp3 wav ogg aac flac"
set "INSTALLER_EXT=exe msi"
set "PDF_EXT=pdf"
set "PROGRAMMING_EXT=py md js html css php java cpp c cs rb go ts json xml yml yaml sql sh bat ps1 ipynb"
set "ARCHIVE_EXT=zip rar 7z tar gz"

:: Set directories
set "source=%USERPROFILE%\Downloads"
set "video_dest=%source%\Video"
set "image_dest=%source%\Images"
set "audio_dest=%source%\Audio"
set "installer_dest=%source%\Installer"
set "pdf_dest=%source%\PDF"
set "programming_dest=%source%\Programming"
set "archive_dest=%source%\Archives"

:: Create directories
if not exist "%video_dest%" mkdir "%video_dest%"
if not exist "%image_dest%" mkdir "%image_dest%"
if not exist "%audio_dest%" mkdir "%audio_dest%"
if not exist "%installer_dest%" mkdir "%installer_dest%"
if not exist "%pdf_dest%" mkdir "%pdf_dest%"
if not exist "%programming_dest%" mkdir "%programming_dest%"
if not exist "%archive_dest%" mkdir "%archive_dest%"

echo Starting file organization...

:: --- PLACEHOLDER: Add your own work-related keywords and logic below ---
:: Example:
:: set "WORK_KEYWORDS=YourCompany ProjectX ImportantTag"
:: for %%F in ("%source%\*.*") do (
::     set "filename=%%~nxF"
::     set "fullpath=%%F"
::     echo !filename! | findstr /i "%WORK_KEYWORDS%" >nul
::     if !errorlevel! equ 0 (
::         echo Moving "!filename!" to your custom folder
::         rem move "!fullpath!" "your_custom_folder_path\"
::     )
:: )
:: --- END PLACEHOLDER ---

:: Process installer files
for %%F in ("%source%\*.*") do (
    set "filename=%%~nxF"
    set "fullpath=%%F"
    set "ext=%%~xF"
    set "ext=!ext:~1!"
    
    for %%I in (%INSTALLER_EXT%) do (
        if /i "!ext!"=="%%I" (
            echo Moving "!filename!" to Installer folder
            move "!fullpath!" "%installer_dest%\"
        )
    )
)

:: Process PDF files
for %%F in ("%source%\*.*") do (
    set "filename=%%~nxF"
    set "fullpath=%%F"
    set "ext=%%~xF"
    set "ext=!ext:~1!"
    
    for %%P in (%PDF_EXT%) do (
        if /i "!ext!"=="%%P" (
            echo Moving "!filename!" to PDF folder
            move "!fullpath!" "%pdf_dest%\"
        )
    )
)

:: Process video files
for %%F in ("%source%\*.*") do (
    set "filename=%%~nxF"
    set "fullpath=%%F"
    set "ext=%%~xF"
    set "ext=!ext:~1!"
    
    for %%V in (%VIDEO_EXT%) do (
        if /i "!ext!"=="%%V" (
            echo Moving "!filename!" to Video folder
            move "!fullpath!" "%video_dest%\"
        )
    )
)

:: Process image files
for %%F in ("%source%\*.*") do (
    set "filename=%%~nxF"
    set "fullpath=%%F"
    set "ext=%%~xF"
    set "ext=!ext:~1!"
    
    for %%I in (%IMAGE_EXT%) do (
        if /i "!ext!"=="%%I" (
            echo Moving "!filename!" to Images folder
            move "!fullpath!" "%image_dest%\"
        )
    )
)

:: Process audio files
for %%F in ("%source%\*.*") do (
    set "filename=%%~nxF"
    set "fullpath=%%F"
    set "ext=%%~xF"
    set "ext=!ext:~1!"
    
    for %%A in (%AUDIO_EXT%) do (
        if /i "!ext!"=="%%A" (
            echo Moving "!filename!" to Audio folder
            move "!fullpath!" "%audio_dest%\"
        )
    )
)

:: Process programming files
for %%F in ("%source%\*.*") do (
    set "filename=%%~nxF"
    set "fullpath=%%F"
    set "ext=%%~xF"
    set "ext=!ext:~1!"
    
    for %%P in (%PROGRAMMING_EXT%) do (
        if /i "!ext!"=="%%P" (
            echo Moving "!filename!" to Programming folder
            move "!fullpath!" "%programming_dest%\"
        )
    )
)

:: Process archive files
for %%F in ("%source%\*.*") do (
    set "filename=%%~nxF"
    set "fullpath=%%F"
    set "ext=%%~xF"
    set "ext=!ext:~1!"
    
    for %%Z in (%ARCHIVE_EXT%) do (
        if /i "!ext!"=="%%Z" (
            echo Moving "!filename!" to Archives folder
            move "!fullpath!" "%archive_dest%\"
        )
    )
)

echo Process completed.
pause 