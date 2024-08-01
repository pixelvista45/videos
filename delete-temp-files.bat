@echo off
:: ****************************************************
:: ** Subscribe to Pixel Vista for more tech tutorials! **
:: ** https://www.youtube.com/@PixelVistaOfficial **
:: ****************************************************

:: Print the subscribe message at the top
echo ****************************************************
echo ** Subscribe to Pixel Vista for more tech tutorials! **
echo ** https://www.youtube.com/@PixelVistaOfficial **
echo ****************************************************

echo Deleting temporary files...

:: Delete user temp files
del /s /q /f %temp%\*
rd /s /q %temp%

:: Delete Windows temp files
del /s /q /f C:\Windows\Temp\*
rd /s /q C:\Windows\Temp

:: Delete Windows prefetch files
del /s /q /f C:\Windows\Prefetch\*

:: Delete additional system temp files
rd /s /q "%systemroot%\Temp"
del /s /q /f "%systemroot%\Prefetch\*"

:: Clear Windows update cache
net stop wuauserv
rd /s /q "%systemroot%\SoftwareDistribution\Download"
net start wuauserv


echo Temporary files deleted!

:: Print the subscribe message at the bottom
echo ****************************************************
echo ** Subscribe to Pixel Vista for more tech tutorials! **
echo ** https://www.youtube.com/@PixelVistaOfficial **
echo ****************************************************

pause
