@ECHO OFF
:: This batch file details System Info such as processor, memory, HDD size, as well as opening HTML to display batt info.
ECHO Please wait... Checking System Info
ECHO ===============
ECHO Hardware Info
ECHO ===============
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
ECHO ===============
powercfg /batteryreport
C:\Users\Owner\Desktop\battery-report.html
PAUSE