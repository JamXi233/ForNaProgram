	@echo off
	mode con:cols=90 lines=20
	Loading Powershell Advanced Version...
	cls&echo Loading...&ping -n 2 127.0.0.1 >nul
	cls&echo Windows PowerShell
	powershell -NoLogo for($i = 1; $i -lt 101; $i++ ) {write-progress -activity Updating -status Loading-Powershell... -percentcomplete $i}
	color 0e
	ping -n 2 127.0.0.1 >nul
	cls&echo Windows PowerShell Advanced �߼���
	powershell -NoLogo for($i = 1; $i -lt 10; $i++ ) {write-progress -activity Updating -status Injecting-Advanced-Command... -percentcomplete $i}
	ping -n 2 127.0.0.1 >nul
	echo ��Ȩ���� (C) 2020 JSG Corporation����������Ȩ����
	echo.
	echo.
	echo ʹ��Get-Help����ȡ����
	echo ʹ��Get-command����ȡ����
	echo ʹ��exit���˳�
	echo ʹ��ls��dir�鿴�ļ���Ŀ¼
	echo ������̨��ȫ����CMD ��������CMD����
	echo.
	powershell -NoLogo for($i = 1; $i -lt 30; $i++ ) {write-progress -activity Updating -status Cleaning... -percentcomplete $i}
	powershell -NoLogo
	echo.
	echo.