@echo off
:: Memeriksa apakah script dijalankan dengan hak administrator
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo Script ini membutuhkan hak administrator.
    echo Memulai ulang dengan hak administrator...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit
)

:: Menentukan folder tempat script dijalankan
set script_dir=%~dp0

:: Menghapus tanda backslash terakhir jika ada
if "%script_dir:~-1%"=="\" set script_dir=%script_dir:~0,-1%

:: Memeriksa apakah folder sudah ada di PATH
echo %PATH% | findstr /C:"%script_dir%" >nul
if %errorlevel% equ 0 (
    :: Folder sudah ada di PATH
    powershell -Command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Folder sudah ada di PATH!', 'Informasi')"
) else (
    :: Menambahkan folder ke PATH
    setx PATH "%PATH%;%script_dir%"
    powershell -Command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Folder berhasil ditambahkan ke PATH!', 'Sukses')"
)

exit
