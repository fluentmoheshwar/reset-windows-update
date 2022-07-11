@echo off
net stop bits
net stop wuauserv
net stop CryptSvc
net stop msiserver
del %windir%\SoftwareDistribution
del %windir%\system32\catroot2
net start bits
net start wuauserv
net start CryptSvc
net start msiserver
pause