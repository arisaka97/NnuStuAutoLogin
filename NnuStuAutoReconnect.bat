@echo off
netsh wlan connect name=nnu_sta
echo %time%
timeout 15 > NUL
echo %time%
netsh wlan connect name=nnu_stu