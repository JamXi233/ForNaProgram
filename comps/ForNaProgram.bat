::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDdRQguUAE+1BaAR7ebv/NahrV8zVdItd4jJ27mycrBBuhW8JM99hC8KzZJdWk9nexO4dwY3pmB9uGGRCJbO60HoSUfp
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZkkaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsGAlbMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIWJwl6TTSQM2yoB7h8
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWHO30wxQ
::YQ03rBFzNR3SWATE3kM9Gzw0
::dhAmsQZ3MwfNWATE3nEXaChAQxaDO276IacT/fib
::ZQ0/vhVqMQ3MEVWAtB9wER5HLA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDdRQguUAE+1BaAR7ebv/NahrV8zVdItd4jJ27myIukd1mPrZ7gs5mhVn9kNAVVdZhfL
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983

::设置软件名称及代号
set name=ForNaProgram
set version=3.1
echo %name%>.\bin\name.txt
echo %version%>.\bin\version.txt
title %name%
set Y=%date:~0,4%
set M=%date:~5,2%
set D=%date:~8,2%
::检测更新

@echo off
mode con:cols=57 lines=30
color 0b
cd bin
cls
echo Please Wait...
echo Secure By JSG
:retrycheck
echo 尝试连接到JSG更新服务器...
ping -n 1 jam233.tpddns.cn >nul
if %errorlevel%==1 goto networkerror
echo %date% %time%:Network Normal>./logs/%date:~0,4%.%date:~5,2%.%date:~8,2%.%time:~0,2%%time:~3,2%.log
update http://jam233.tpddns.cn:51/update/status.txt >status.txt
for /f "delims=" %%a in (status.txt) do (
set status=%%a
)
del status.txt
if %status%==1 goto servererror
if %errorlevel%==0 goto testversion

:networkerror
echo %date% %time%:Network Error>./logs/%date:~0,4%.%date:~5,2%.%date:~8,2%.%time:~0,2%%time:~3,2%.log
cls
echo 无法连接到JSG更新服务器 请选择项目:
echo 1.重试
echo 2.直接进入
set /p choice=
if %choice%==1 goto retrycheck
if %choice%==2 goto main
color 0e
:testversion
@echo off & setlocal enabledelayedexpansion 
update http://jam233.tpddns.cn:51/update/%name%/updatever.txt >update.txt
for /f "delims=" %%a in (update.txt) do (
set update=%%a
)

update http://jam233.tpddns.cn:51/update/%name%/died.txt >died.txt
for /f "delims=" %%a in (died.txt) do (
set died=%%a
)
del died.txt

cls
color c
update http://jam233.tpddns.cn:51/update/welcome.txt
echo 当前版本为:%version%
ping -n 2 127.0.0.1 >nul
if %died%==1 goto died
if %update%==%version% goto main

:checkupdate
start ..\comps\Updater.bat
goto main

:downloadupdate
cls
wget http://jam233.tpddns.cn:51/update/%name%/%name%_%update%.zip -P ../
pause
exit

:died
cls
mode con:cols=77 lines=37
color 4f
update.exe http://jam233.tpddns.cn:51/update/died.txt
pause
exit

:servererror
cls
mode con:cols=33 lines=35
color 4f
update.exe http://jam233.tpddns.cn:51/status.txt
pause
exit

::检测更新结束
:main
cls
echo 正在加载主程序...
echo Q:为什么会出现这个呢?
echo A:因为软件功能的增多 每次重新进入主页都要重置
echo A:在以后的更新可能会优化哦
set SS=2020-03-17
set EE=%Y%-%M%-%D%
echo Set fs = CreateObject("Scripting.FileSystemObject")>.\mdate\mdate.vbs
echo Set a = fs.OpenTextFile(".\mdate\mdate.txt", 8,True)>>.\mdate\mdate.vbs
echo a.write cdate("%EE%")-cdate("%SS%")>>.\mdate\mdate.vbs
echo a.Close>>.\mdate\mdate.vbs
ping -n 1 127.0.0.1>nul
start wscript -e:vbs ".\mdate\mdate.vbs"
ping -n 2 127.0.0.1>nul
for /f %%a in (.\mdate\mdate.txt) do (
set mdate=%%a
)
set SS=%Y%-%M%-%D%
set EE=2020-10-01
echo Set fs = CreateObject("Scripting.FileSystemObject")>.\mdate\sdate.vbs
echo Set a = fs.OpenTextFile(".\mdate\sdate.txt", 8,True)>>.\mdate\sdate.vbs
echo a.write cdate("%EE%")-cdate("%SS%")>>.\mdate\sdate.vbs
echo a.Close>>.\mdate\sdate.vbs
ping -n 1 127.0.0.1>nul
start wscript -e:vbs ".\mdate\sdate.vbs"
ping -n 2 127.0.0.1>nul
for /f %%a in (.\mdate\sdate.txt) do (
set sdate=%%a
)
ping -n 1 127.0.0.1>nul
del /f/q ".\mdate\mdate.vbs" & del /f/q ".\mdate\mdate.txt"
del /f/q ".\mdate\sdate.vbs" & del /f/q ".\mdate\sdate.txt"
mode con:cols=57 lines=35
title 你好呀,我的小娜娜
set choice=no
cls
color 0A
cls
echon -c 4F 你好呀,我的小娜娜
echon 版本:%version%
echo 现在是%date% %time%
echon -c CF 我们已经相爱了%mdate%天哦
if %date:~0,10%==2020/09/30 echon -c Ad 距离国庆节还有%sdate%天哦，提前祝老婆国庆节快乐哦！
if %date:~0,10%==2020/10/01 echon -c C7 今天是国庆节哦，祝老婆国庆节快乐哦！
if %date:~0,10%==2020/10/01 echon -c C7 今天要开开心心的哦！
if %date:~0,10%==2020/10/01 echon -c C7 老公爱你哟！
rem if %date:~0,10% neq 2020/08/25 set /a remain=25-%date:~8,2%
rem if %date:~0,10% neq 2020/08/25 echon -c 5F 距离七夕还有%remain%天哦
if %date:~0,10%==2020/08/25 echon -c C7 今天是七夕哦
if %date:~0,10%==2020/08/25 echon -c C7 七夕快乐哟老婆
if %date:~0,10%==2020/08/25 echon -c C7 别有太大压力,你会成功的,老公相信你哦!
if %date:~0,10%==2020/08/25 echon -c C7 学习就要有个学习的样子,别总心思考不上考不上的
if %date:~0,10%==2020/08/25 echon -c C7 你最后会发现,就是瞎想毁了你的学习
echo ▂▂▂▂▂▂▂
echo.
echo 选择项目:
echon -c 0C 表白/爱情程序
echon -c 0B ├-1.表白-b1
echon -c 0B ├-2.表白-b2
echon -c 0B ├-3.表白-b3
echon -c 0B └-4.闪烁心心
echo.
echon -c 0C 程序
echon -c 0B ├-5.CMD帮助
echon -c 0B ├-6.随机一句
echon -c 5F ├-7X.七夕
echon -c 0B ├-8.3D彩蛋(DS3D-Engine)
echon -c 0B ├-9.七夕彩蛋(DS-Engine)
echon -c 0B └-10.类似黑客的随机数字下落(DS-Engine)
echo.
echon -c 0C 工具
echon -c 0B ├-P.PING实用工具
echon -c 0B ├-S.电脑加速
echon -c 0B └-SE.电脑加速[Extreme]
echo.
echon -c 0C 其他
echon -c 0B ├-C:彩虹文字代码
echon -c 0B ├-E:进入时光回忆网站
echon -c 0B ├-T.想跟你说的话
echon -c 0B ├-H.帮助
echon -c 0B └-U.本版本更新日志
echo.
echon -c 2F ↓输入选择↓
set /p choice=
if %choice%==1 goto bb1
if %choice%==2 goto bb2
if %choice%==3 goto bb3
if %choice%==4 goto 闪烁心心
if %choice%==5 goto CMD帮助
if %choice%==6 goto 随机一句
if %choice%==8 goto ChilledWindows
if %choice%==9 goto draw
if %choice%==10 goto drawhacknumber
if %choice%==S goto speed
if %choice%==SE goto speedex
if %choice%==P goto PING实用工具
if %choice%==7X goto 7X
if %choice%==C goto COLOR
if %choice%==E goto TimeMachine
if %choice%==T goto TALK
if %choice%==H goto HELP
if %choice%==U goto Update
if %choice%==no goto err
:err
cls
title 输入错了哦
echon -c 4A 选择错误,请重新选择
pause
goto main
:TALK
cls
echon -c 0C 老婆你也知道我很爱你 
echon -c 0D 我也会比别的男的还要好 
echon -c 0E 不管什么事都先考虑你 
echon -c 0F 所以你也要对我好哦 
echon -c 04 我们一定能在一起一辈子的!
echo.
echon -c 03 爱你哟老婆[亲]
echo.
pause
goto main
:HELP
cls
echon -c C7 这个软件是我专门为你做的
echon -c C7 不会让任何人获得它 
echon -c C7 这个软件已经接入到JSG服务器 任何人打开它都会被记录 
echon -c C7 所以不用怕别人盗走哦
echo.
echon 本机序列号:
wmic bios get serialnumber
echon -c C7 爱你哟,嘻嘻
echo.
pause
goto main
:TimeMachine
cls
start https://love.jamsg.cn/
echo 已经调用默认浏览器打开网站
pause
goto main
:COLOR
mode con:cols=65 lines=30
cls
echon -l
echo.
echo ~t 制表符
echo ~n 换行
echo ~r 后面备注
pause
goto main
:bb1
cls
echo -------------------------------
echo             I
echo          L O V E
echo           Y O U
echo.
echo Protect You and Help you
echo This is my creed
echo.
echo can you promise me?
echo.
echo.
echo From JSG Storage Group-JamXi b1
echo -------------------------------
echo 显示完成 按任意键返回主菜单
pause >nul
goto main
:bb2
cls
echo -------------------------------
echo                         I
echo              L O V E
echo                   Y O U
echo.
echo Protect You and Help you
echo This is my creed
echo.
echo can you promise me?
echo.
echo.
echo From JSG Storage Group-JamXi b2
echo -------------------------------
echo 显示完成 按任意键返回主菜单
pause >nul
goto main
:bb3
cls
echo -------------------------------
echo         I
echo      L O V E
echo       Y O U
echo.
echo Protect You and Help you
echo This is my creed
echo.
echo can you promise me?
echo.
echo.
echo From JSG Storage Group-JamXi b3
echo -------------------------------
echo 显示完成 按任意键返回主菜单
pause >nul
goto main
:闪烁心心
@echo off
title LOVE FOR 焦娜
mode con:cols=73 lines=30
color 5
echo                                 ...3...
ping -n 2 127.0.0.1>null
echo                                 ...2...
ping -n 2 127.0.0.1>null
echo                                 ...1...
ping -n 2 127.0.0.1>null
cls
echo                    *********               ***********
ping -n 1 127.0.0.1>null
echo                ***************           *****************
ping -n 1 127.0.0.1>null
echo           **********************       ************************
ping -n 1 127.0.0.1>null
echo        ***********************************************************
ping -n 1 127.0.0.1>null
echo      ***************************************************************
ping -n 1 127.0.0.1>null
echo     *****************************************************************
ping -n 1 127.0.0.1>null
echo    -------------------------------------------------------------------
ping -n 1 127.0.0.1>null
echo                                亲爱的焦娜
ping -n 1 127.0.0.1>null
echo     -----------------------------------------------------------------
ping -n 1 127.0.0.1>null
echo      *********我****************************************************
ping -n 1 127.0.0.1>null
echo        ****************爱*****************************************
ping -n 1 127.0.0.1>null
echo          **********************你*******************************
ping -n 1 127.0.0.1>null
echo            *****************，********************************
ping -n 1 127.0.0.1>null
echo              ***********************************************
ping -n 1 127.0.0.1>null
echo                **********一*******************************
ping -n 1 127.0.0.1>null
echo                  ***********生**************************
ping -n 1 127.0.0.1>null
echo                    ************一*********************
ping -n 1 127.0.0.1>null
echo                      *************世****************
ping -n 1 127.0.0.1>null
echo                        **************！***********
ping -n 1 127.0.0.1>null
echo                          ***********************
ping -n 1 127.0.0.1>null
echo                            *******************
ping -n 1 127.0.0.1>null
echo                              ***************
ping -n 1 127.0.0.1>null
echo                                ***********
ping -n 1 127.0.0.1>null
echo                                  *******
ping -n 1 127.0.0.1>null
echo                                    ***
ping -n 1 127.0.0.1>null
echo                                     * 
ping -n 1 127.0.0.1>null
set a=1
:闪烁心心S
set /a a=%a%+1
set /a dj=%random%%%9+0
color %dj%
ping -n 1 127.0.0.1>null
if %a%==100 pause & goto main
goto 闪烁心心S
:CMD帮助
mode con:cols=80 lines=45
cls
echo 这里是CMD帮助小程序
echo 可以让你更快速的获取帮助
echo 输入要查询的命令:
set /p command=
%command% /?
if %errorlevel%==9009 goto CMD帮助Err
echo.
echoN -c CF 显示完成,是否保存？
echo 1.保存
echo 0.不保存
set /p choice=
if %choice%==1 goto CMD保存
if %choice%==0 goto CMD不保存
:CMD保存
cls
%command% /? >../save/[%command%]帮助.txt
echo 已经保存到/save/文件夹内
echoN -c CF 是否打开所在文件夹？
echo 1.是
echo 0.否
set /p choice=
if %choice%==1 start ..\save\
if %choice%==0 goto CMD不保存
:CMD不保存
cls
echoN -c CF 是否继续？
echo 1.继续
echo 0.退出到主菜单
set /p choice=
if %choice%==1 goto CMD帮助
if %choice%==0 goto main
:CMD帮助Err
cls
echoN -c CF 输入的指令无效
pause
goto CMD帮助
:随机一句
set choice=1
cls
echo *********************************************************
update https://v1.hitokoto.cn/?encode=text
echo.
echo *********************************************************
echo.
echo.
echo 按任意键再来一句
echo 输入0返回到主菜单
set /p choice=
if %choice%==0 goto main
goto 随机一句
:ChilledWindows
cls
echo 加载Arrow(JSG)3D绘图引擎...
echo Init...
echo Powered by Arrow(JSG)
ping -n 2 127.0.0.1 >nul
mode con:cols=57 lines=20
ping -n 1 127.0.0.1 >nul
echo Starting Render Engine(DS3D-Engine)...
mode con:cols=70 lines=50
ping -n 2 127.0.0.1 >nul
mode con:cols=57 lines=30
ping -n 1 127.0.0.1 >nul
mode con:cols=30 lines=60
ping -n 3 127.0.0.1 >nul
mode con:cols=57 lines=30
ping -n 3 127.0.0.1 >nul
cls
echo 加载完成
echo 按任意键开始
pause >nul
.\ChilledWindows.exe
cls
echo 好玩吧 嘻嘻
pause
goto main
:PING实用工具
cls
echo 输入要PING的IP地址/域名/主机名
set /p IP=
cls
echo 输入要PING的次数
set /p count=
cls
echo 输入要PING的数据包大小
set /p size=
cls
echo 1.输出命令并执行
echo 2.仅输出命令
set /p choice=
if %choice%==1 goto PING实用工具-输出执行
if %choice%==2 goto PING实用工具-输出
:PING实用工具-输出执行
cls
echo ping -n %count% -l %size% %ip%
ping -n %count% -l %size% %ip%
pause
cls
echo 按任意键继续
echo 输入0返回到主菜单
set /p choice=
if %choice%==0 goto main
goto PING实用工具
:PING实用工具-输出
cls
echo ping -n %count% -l %size% %ip%
pause
cls
echo 按任意键继续
echo 输入0返回到主菜单
set /p choice=
if %choice%==0 goto main
goto PING实用工具
:7X
goto 7XPWD
:7XPWD
cls
set ready=0
update http://jam233.tpddns.cn:51/update/ForNaProgram/Password.txt >Password.txt
for /f "delims=" %%a in (Password.txt) do (
set Password=%%a
)
del Password.txt
:7XPWDR
cls
echo 想跟你说的话需要密码来解锁哦！
echo 已经尝试了%ready%次哦 5次就会闪退哦
set /p input=
set /a ready=ready+1
if %ready%==5 exit
if %input%==%Password% goto 7XDisplay
goto 7XPWDR
:7XDisplay
cls
color 0D
update http://www.jamsg.cn:51/update/ForNaProgram/7X.txt
echon -c 5F 老婆,七夕节快乐哟
echon -c 5F [已去除]
echon -c 5F 礼物已经给你了...为什么不能天天戴着呢......
echon -c 5F 爱你哟,我的好老婆
pause
goto 想跟你说的话

:想跟你说的话
color 0F
cls
echon -c 49 想跟你说的话
mode con:cols=57 lines=35
echo 这些话本来是想和项链一起给你的
echo 但是项链给你了
echo 就留在程序里面说吧
echo 首先:
ping 127.0.0.1 >nul
echo 那天带你去小梅的时候
echo 让你看看那些项链哪个好
echo 问你一个你说不好
echo 每个都不好 
echo 我就问你:那个项链好不好看 
echo 你说:那个多土啊
echo 我说:我给你买的就是这个...
echo 你说:你就给我买这么土的啊?
echo 真的让我很伤心......
echo 这是我特意给你挑的 挑了很长很长时间
echo 我还以为你会很开心 没想到换来的却是这句话
echo 我那时候真的感觉你特别物质 甚至都不那么爱你了
echo 我也希望是我想错了 但是你真的说了那句话 让我很伤心
echo 之后你也是一直都在哄我
echo 你还说 我给你买的你都很喜欢
echo 但是你之前说的话都忘了吗?
echo 你亲口说了 土
echo 你亲口说了 好看
echo 我应该相信哪个呢?
echo 也许是我对你太好了吧
echo 最后还是选择了原谅你
echo 给你把项链戴上了
echo 但是我想自己呆着 要把你送到家里
echo 你就是不想回家 想要去我家
echo 但是我那时候真的很不想看到你
echo 也许是因为我对于你那个下车的举动动心了
echo 最后我还是把你带我家去了
echo 你也很开心
echo 我也是想 你咋开心就咋来吧
echo 我也许是这个世界上对你最好的人了
echo 我这么珍惜你 你也要珍惜我吧
echo 完。
echo 按任意键进入我要对你说的话
pause >nul
cls
mode con:cols=57 lines=30
echon -c 94 接下来是我给你项链时要给你写的话
ping 127.0.0.1 >nul
echon -c 94 这戴项链 是我给你精心挑选出来的
echon -c 94 你要好好珍惜哦
echon -c 94 这将代表着咱俩的爱情
echon -c 94 永不可分的爱情
echon -c 94 当你上大学的时候,就把它带着
echon -c 94 虽然我不能陪着你
echon -c 94 但是这戴项链,是我的心意
echon -c 94 就让它陪着你吧,嘻嘻 :)
echon -c 94 也希望我们能好好念完大学,领证
echon -c 94 完成我们永远的梦想！
echon -c 94 永远的在一起吧！
echon -c 94 永远爱你哦 老婆
echo.
echo 按任意键进入小程序
pause >nul
cls
echo 加载Arrow(JSG)绘图引擎...
echo Init...
echo Powered by Arrow(JSG)
ping -n 2 127.0.0.1 >nul
mode con:cols=57 lines=20
ping -n 1 127.0.0.1 >nul
echo Starting Render Engine(DS-Engine)...
mode con:cols=70 lines=50
ping -n 2 127.0.0.1 >nul
mode con:cols=57 lines=30
ping -n 1 127.0.0.1 >nul
mode con:cols=30 lines=60
ping -n 3 127.0.0.1 >nul
mode con:cols=57 lines=30
ping -n 3 127.0.0.1 >nul
:draw
set choice=0
cls
echo. 
echo              ****          ****
echo    *******        *******
echo          ***********    ***********
echo *************  *************
echo         ****************************
echo ****************************
echo         ****************************
echo  **************************
echo            ***********************
echo      *******************
echo                ***************
echo          ***********
echo                    *******
echo              ***
echo                       *
ping -n 2 127.0.0.1 >nul
cls
echo. 
echo             ****          ****
echo     *******        *******
echo         ***********    ***********
echo  *************  *************
echo        ****************************
echo  ****************************
echo        ****************************
echo   **************************
echo           ***********************
echo       *******************
echo               ***************
echo           ***********
echo                   *******
echo               ***
echo                      *
ping -n 2 127.0.0.1 >nul
cls
echo. 
echo            ****          ****
echo      *******        *******
echo        ***********    ***********
echo   *************  *************
echo       ****************************
echo   ****************************
echo       ****************************
echo    **************************
echo          ***********************
echo        *******************
echo              ***************
echo            ***********
echo                  *******
echo                ***
echo                     *
ping -n 2 127.0.0.1 >nul
cls
echo. 
echo           ****          ****
echo       *******        *******
echo       ***********    ***********
echo    *************  *************
echo      ****************************
echo    ****************************
echo      ****************************
echo     **************************
echo         ***********************
echo         *******************
echo             ***************
echo             ***********
echo                 *******
echo                 ***
echo                    *
ping -n 2 127.0.0.1 >nul
cls
echo. 
echo          ****          ****
echo        *******        *******
echo      ***********    ***********
echo     *************  *************
echo     ****************************
echo     ****************************
echo     ****************************
echo      **************************
echo        ***********************
echo          *******************
echo            ***************
echo              ***********
echo                *******
echo                  ***
echo                   *
echo 永远爱你哟 我的好老婆
echo 终于做出来了 嘿嘿
echo 输入1重新播放
set /p choice=
if %choice%==1 goto draw
pause
goto main
:speed
set choice=err
echo.执行清理垃圾，加快运行速度
echo.按1开始清理 如不想清理输入0回车&pause>nul
set /p choice=
if %choice%==0 goto main
echo 正在清除系統垃圾文件，請稍等......
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
cls
echo.清除系统垃圾完成！
echo.按任意键返回&pause>nul
goto main
:speedex
echo 尚未开放 下次更新开放哦
pause
goto main
:drawhacknumber
cls
echo 按任意键开始 只能通过关闭窗口退出哦
pause>nul
mode con:cols=100 lines=35
@echo off
title digitalrain
color 0b
setlocal ENABLEDELAYEDEXPANSION
for /l %%i in (0) do (
set "line="
for /l %%j in (1,1,80) do (
set /a Down%%j-=2
set "x=!Down%%j!"
if !x! LSS 0 (
set /a Arrow%%j=!random!%%3
set /a Down%%j=!random!%%15+10
)
set "x=!Arrow%%j!"
if "!x!" == "2" (
set "line=!line!!random:~-1! "
) else (set "line=!line! ")
)
set /p=!line!<nul
)
:Update
cls
echo 获取更新信息...
update http://jam233.tpddns.cn:51/update/%name%/info.txt
echo 当前版本:%version%
echo 最新版本:%update%*
update http://jam233.tpddns.cn:51/update/%name%/update.txt
pause
goto main
:exit
exit