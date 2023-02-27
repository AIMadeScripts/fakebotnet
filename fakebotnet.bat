title memes be dreams
@echo off
setlocal enabledelayedexpansion

:menu
cls
set /a online_websites=8133
set /a root_websites=6216
set /a offline_websites=166
set /a stressing_power=3450
set /a windows_count=890
set /a linux_count=7243
set /a unknown_count=166
set /a online_websites=%online_websites% + %random% %% 41 - 20
set /a root_websites=%root_websites% + %random% %% 41 - 20
set /a offline_websites=%offline_websites% + %random% %% 41 - 20
set /a windows_count=%windows_count% + %random% %% 41 - 20
set /a linux_count=%linux_count% + %random% %% 41 - 20
set /a stressing_power=%stressing_power% + %random% %% 571 - 285
if %stressing_power% leq 3190 set stressing_power=3190
if %stressing_power% geq 3750 set stressing_power=3750

set /a stressing_power_decimals=%stressing_power% %% 100
if %stressing_power_decimals% equ 0 (
    set /a stressing_power_display=%stressing_power% / 100
) else (
    set /a stressing_power_display=%stressing_power% / 100 + 1
)

echo Total websites online: %online_websites% ^| root %root_websites% ^| offline %offline_websites%
echo Total stressing power: %stressing_power_display%.%stressing_power_decimals% Gbps
echo ====================
echo Menu
echo ====================
echo 1. Windows: %windows_count%
echo 2. Linux: %linux_count%
echo 3. Unknown: %unknown_count%
echo 4. Refresh
echo 5. Exit
echo ====================

set "choice="
set /p "choice=Select an option (1-4): " || set "choice="
if not defined choice (
    cls
    echo Refreshing...
    timeout /t 2 >nul
    goto menu
)

if "%choice%"=="1" (
    echo You have selected windows bots.
    goto windows_menu
)

if "%choice%"=="2" (
    echo You have selected linux bots.
    goto linux_menu
)

if "%choice%"=="3" (
    cls
    echo Fingerprinting unknown machines...
    timeout /t 5 >nul
    cls
    goto menu
)

if "%choice%"=="4" (
    cls
    echo Refreshing the menu
    timeout /t 2 >nul
    cls
    goto menu
)

if "%choice%"=="5" (
    cls
    exit
)

goto menu

timeout /t 2 >nul
goto display_menu

:windows_menu
set /p windows_choice=Select an option (1=Recover Passwords, 2=Stress an IP, 3=Screenfetch, 4=Keylog, 5=Return to bot menu): 
if "%windows_choice%"=="1" (
    set /p "passwordfetch=Password fetch from device id: %online_websites% online. "
    echo Getting passwords from Device %passwordfetch%
    echo Saved to /passwords/device_%passwordfetch%.jpg
    set folder1=%CD%\passwords
    set /a num=%random% %%2 +1
    set filename=!num!.csv
    more "%folder1%\!filename!"
    timeout /t 5 >nul
    goto windows_menu
) else if "%windows_choice%"=="2" (
    set /p "ip_address=Enter an IP to stress: "
    echo You entered %ip_address%
    :ping_loop
    ping %ip_address% -n 1 -w 10000 >nul
    if %errorlevel%==0 (
    echo %ip_address% is still online.
    timeout /t 5 >nul
    goto ping_loop
    ) else (
    echo %ip_address% is DOWN!
    timeout /t 5 >nul
    goto windows_menu
    )
) else if "%windows_choice%"=="3" (
    set /p "Screenfetchfrom=Screenfetch from device id: %online_websites% online. "
    echo Getting Screenshot from Device %Screenfetchfrom%
    echo Saved to /screenshots/device_%Screenfetchfrom%.jpg
   
    set folder=%CD%\screenshots
    set /a num=%random% %%19 +1
    set filename=!num!.jpg
    
    start mspaint.exe "%folder%\!filename!"
    timeout /t 5 >nul
    goto windows_menu
) else if "%windows_choice%"=="4" (
    set /p "Keylogfrom=Keylog from device id: %online_websites% online. "
    echo Keylogging enabled on Device %Keylogfrom%
    timeout /t 5 >nul
    goto windows_menu
) else if "%windows_choice%"=="5" (
    echo Returning to bot menu...
    timeout /t 2 >nul
    goto menu
) else (
    echo Invalid option. Returning to bot menu...
    timeout /t 2 >nul
    goto menu
)

:linux_menu
set /p linux_choice=Select an option (1=Stress, 2=Keylog, 3=TryRoot, 4=Troll, 5=Return to bot menu): 
if "%linux_choice%"=="1" (
    echo You selected Stress.
    timeout /t 5 >nul
    cls
    goto menu
) else if "%linux_choice%"=="2" (
    echo You selected Keylog.
    timeout /t 5 >nul
    cls
    goto menu
) else if "%linux_choice%"=="3" (
    echo You selected TryRoot.
    timeout /t 5 >nul
    cls
    goto menu
) else if "%linux_choice%"=="4" (
    echo You selected Troll.
    timeout /t 5 >nul
    cls
    goto menu
) else if "%linux_choice%"=="5" (
    echo Returning to bot menu...
    timeout /t 2 >nul
    goto menu
) else (
    echo Invalid option. Returning to bot menu...
    timeout /t 2 >nul
    goto menu
)
goto menu
