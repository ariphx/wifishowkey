@echo off
:: Memeriksa apakah script dijalankan dengan hak administrator
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo This script needs to be run as Administrator.
    echo Restarting with Administrator privileges...
    :: Mengulang script ini dengan hak administrator
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit
)

setlocal enabledelayedexpansion

:: Mengatur warna latar belakang dan teks
color 0A

:: Banner
echo.
echo               W I S K E Y   
echo.                   
echo         WiFi Show KEY - @ariphx              
echo.
echo.

:: Mengecek daftar Wi-Fi yang tersimpan
echo Checking the Wi-Fi list...
netsh wlan show profiles > wifi_list.txt

:: Cek apakah ada Wi-Fi yang ditemukan
if %errorlevel% neq 0 (
    echo No Wi-Fi profile found.
    del wifi_list.txt
    pause
    exit
)

:: Menampilkan daftar Wi-Fi
echo Wi-Fi Lists:
set /a count=0
for /f "tokens=2 delims=:" %%a in ('findstr "All User Profile" wifi_list.txt') do (
    set /a count+=1
    set ssid[!count!]=%%a
    echo !count!. %%a
)

:: Meminta user untuk pilih nomor Wi-Fi
set /p choice="(1-%count%): "

:: Validasi input user
if %choice% lss 1 if %choice% gtr %count% (
    echo Invalid choices!
    del wifi_list.txt
    pause
    exit
)

:: Ambil nama Wi-Fi berdasarkan pilihan
set selected_ssid=!ssid[%choice%]!
set selected_ssid=%selected_ssid:~1%

:: Menampilkan password untuk Wi-Fi yang dipilih
echo.
echo     SSID                   : %selected_ssid%
netsh wlan show profile name="%selected_ssid%" key=clear | findstr /R /C:"Key Content" || echo Password not found or network is open.
echo.
:: Membersihkan file sementara
del wifi_list.txt

pause
