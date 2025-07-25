@echo off
:: 🛡️ WINDOWS 10 LOCK – BLOCK WINDOWS 11 FOREVER

echo.
echo 🔒 LOCKING WINDOWS 10 - BY DESIGN
echo.

:: === Set Windows 10 target version ===
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v TargetReleaseVersion /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v TargetReleaseVersionInfo /t REG_SZ /d 22H2 /f

:: === Hide Windows 11 upgrade UI ===
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /f >nul
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v HideWindows11Upgrade /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v HideOSUpgrade /t REG_DWORD /d 1 /f

echo ✅ Registry locked to Windows 10 - 22H2.

:: === Replace appraiserres.dll with empty decoy ===
set appraiser=%SystemRoot%\System32\appraiserres.dll
if exist "%appraiser%" (
    takeown /f "%appraiser%" >nul
    icacls "%appraiser%" /grant administrators:F /t >nul
    ren "%appraiser%" appraiserres.dll.bak
    echo. > "%appraiser%"
    echo ✅ appraiserres.dll neutralized.
) else (
    echo ✅ appraiserres.dll already neutralized or missing.
)

:: === Block Upgrade Assistant with decoy folder ===
set upgradefolder=C:\Windows10Upgrade
if exist "%upgradefolder%" (
    rmdir /s /q "%upgradefolder%"
)
mkdir "%upgradefolder%" >nul 2>&1
icacls "%upgradefolder%" /inheritance:r /deny *S-1-1-0:(W) >nul
echo ✅ Upgrade Assistant blocked via decoy folder.

echo.
echo 🎮 YOU ARE NOW FREE. WINDOWS 10 IS LOCKED. PLAY IN PEACE.
pause
exit
