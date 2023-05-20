@echo off
setlocal EnableDelayedExpansion
set "newPIDlist="
set "oldPIDlist=p"
::find old PIDs
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='chrome.exe'" get ProcessID ^| findstr [0-9]') do (set "oldPIDlist=!oldPIDlist!%%ap")
::start your site here
start http://www.example.com/cgi/myprogram.exe
::find new PIDs
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='chrome.exe'" get ProcessID ^| findstr [0-9]') do (
if "!oldPIDlist:p%%ap=zz!"=="%oldPIDlist%" (set "newPIDlist=/PID %%a !newPIDlist!")
)
echo %newPIDlist%
::wait for page to load
timeout /t 5 /nobreak >nul
taskkill /f %newPIDlist% /T > NUL 2>&1


