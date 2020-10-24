	@echo off
	mode con:cols=90 lines=20
	Loading Powershell Advanced Version...
	cls&echo Loading...&ping -n 2 127.0.0.1 >nul
	cls&echo Windows PowerShell
	powershell -NoLogo for($i = 1; $i -lt 101; $i++ ) {write-progress -activity Updating -status Loading-Powershell... -percentcomplete $i}
	color 0e
	ping -n 2 127.0.0.1 >nul
	cls&echo Windows PowerShell Advanced 高级版
	powershell -NoLogo for($i = 1; $i -lt 10; $i++ ) {write-progress -activity Updating -status Injecting-Advanced-Command... -percentcomplete $i}
	ping -n 2 127.0.0.1 >nul
	echo 版权所有 (C) 2020 JSG Corporation。保留所有权利。
	echo.
	echo.
	echo 使用Get-Help来获取帮助
	echo 使用Get-command来获取命令
	echo 使用exit来退出
	echo 使用ls或dir查看文件或目录
	echo 本控制台完全兼容CMD 可以套用CMD代码
	echo.
	powershell -NoLogo for($i = 1; $i -lt 30; $i++ ) {write-progress -activity Updating -status Cleaning... -percentcomplete $i}
	powershell -NoLogo
	echo.
	echo.