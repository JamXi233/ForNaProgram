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

::����������Ƽ�����
set name=ForNaProgram
set version=3.1
echo %name%>.\bin\name.txt
echo %version%>.\bin\version.txt
title %name%
set Y=%date:~0,4%
set M=%date:~5,2%
set D=%date:~8,2%
::������

@echo off
mode con:cols=57 lines=30
color 0b
cd bin
cls
echo Please Wait...
echo Secure By JSG
:retrycheck
echo �������ӵ�JSG���·�����...
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
echo �޷����ӵ�JSG���·����� ��ѡ����Ŀ:
echo 1.����
echo 2.ֱ�ӽ���
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
echo ��ǰ�汾Ϊ:%version%
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

::�����½���
:main
cls
echo ���ڼ���������...
echo Q:Ϊʲô����������?
echo A:��Ϊ������ܵ����� ÿ�����½�����ҳ��Ҫ����
echo A:���Ժ�ĸ��¿��ܻ��Ż�Ŷ
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
title ���ѽ,�ҵ�С����
set choice=no
cls
color 0A
cls
echon -c 4F ���ѽ,�ҵ�С����
echon �汾:%version%
echo ������%date% %time%
echon -c CF �����Ѿ��మ��%mdate%��Ŷ
if %date:~0,10%==2020/09/30 echon -c Ad �������ڻ���%sdate%��Ŷ����ǰף���Ź���ڿ���Ŷ��
if %date:~0,10%==2020/10/01 echon -c C7 �����ǹ����Ŷ��ף���Ź���ڿ���Ŷ��
if %date:~0,10%==2020/10/01 echon -c C7 ����Ҫ�������ĵ�Ŷ��
if %date:~0,10%==2020/10/01 echon -c C7 �Ϲ�����Ӵ��
rem if %date:~0,10% neq 2020/08/25 set /a remain=25-%date:~8,2%
rem if %date:~0,10% neq 2020/08/25 echon -c 5F ������Ϧ����%remain%��Ŷ
if %date:~0,10%==2020/08/25 echon -c C7 ��������ϦŶ
if %date:~0,10%==2020/08/25 echon -c C7 ��Ϧ����Ӵ����
if %date:~0,10%==2020/08/25 echon -c C7 ����̫��ѹ��,���ɹ���,�Ϲ�������Ŷ!
if %date:~0,10%==2020/08/25 echon -c C7 ѧϰ��Ҫ�и�ѧϰ������,������˼�����Ͽ����ϵ�
if %date:~0,10%==2020/08/25 echon -c C7 �����ᷢ��,����Ϲ��������ѧϰ
echo �y�y�y�y�y�y�y
echo.
echo ѡ����Ŀ:
echon -c 0C ���/�������
echon -c 0B ��-1.���-b1
echon -c 0B ��-2.���-b2
echon -c 0B ��-3.���-b3
echon -c 0B ��-4.��˸����
echo.
echon -c 0C ����
echon -c 0B ��-5.CMD����
echon -c 0B ��-6.���һ��
echon -c 5F ��-7X.��Ϧ
echon -c 0B ��-8.3D�ʵ�(DS3D-Engine)
echon -c 0B ��-9.��Ϧ�ʵ�(DS-Engine)
echon -c 0B ��-10.���ƺڿ͵������������(DS-Engine)
echo.
echon -c 0C ����
echon -c 0B ��-P.PINGʵ�ù���
echon -c 0B ��-S.���Լ���
echon -c 0B ��-SE.���Լ���[Extreme]
echo.
echon -c 0C ����
echon -c 0B ��-C:�ʺ����ִ���
echon -c 0B ��-E:����ʱ�������վ
echon -c 0B ��-T.�����˵�Ļ�
echon -c 0B ��-H.����
echon -c 0B ��-U.���汾������־
echo.
echon -c 2F ������ѡ���
set /p choice=
if %choice%==1 goto bb1
if %choice%==2 goto bb2
if %choice%==3 goto bb3
if %choice%==4 goto ��˸����
if %choice%==5 goto CMD����
if %choice%==6 goto ���һ��
if %choice%==8 goto ChilledWindows
if %choice%==9 goto draw
if %choice%==10 goto drawhacknumber
if %choice%==S goto speed
if %choice%==SE goto speedex
if %choice%==P goto PINGʵ�ù���
if %choice%==7X goto 7X
if %choice%==C goto COLOR
if %choice%==E goto TimeMachine
if %choice%==T goto TALK
if %choice%==H goto HELP
if %choice%==U goto Update
if %choice%==no goto err
:err
cls
title �������Ŷ
echon -c 4A ѡ�����,������ѡ��
pause
goto main
:TALK
cls
echon -c 0C ������Ҳ֪���Һܰ��� 
echon -c 0D ��Ҳ��ȱ���еĻ�Ҫ�� 
echon -c 0E ����ʲô�¶��ȿ����� 
echon -c 0F ������ҲҪ���Һ�Ŷ 
echon -c 04 ����һ������һ��һ���ӵ�!
echo.
echon -c 03 ����Ӵ����[��]
echo.
pause
goto main
:HELP
cls
echon -c C7 ����������ר��Ϊ������
echon -c C7 �������κ��˻���� 
echon -c C7 �������Ѿ����뵽JSG������ �κ��˴������ᱻ��¼ 
echon -c C7 ���Բ����±��˵���Ŷ
echo.
echon �������к�:
wmic bios get serialnumber
echon -c C7 ����Ӵ,����
echo.
pause
goto main
:TimeMachine
cls
start https://love.jamsg.cn/
echo �Ѿ�����Ĭ�����������վ
pause
goto main
:COLOR
mode con:cols=65 lines=30
cls
echon -l
echo.
echo ~t �Ʊ��
echo ~n ����
echo ~r ���汸ע
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
echo ��ʾ��� ��������������˵�
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
echo ��ʾ��� ��������������˵�
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
echo ��ʾ��� ��������������˵�
pause >nul
goto main
:��˸����
@echo off
title LOVE FOR ����
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
echo                                �װ��Ľ���
ping -n 1 127.0.0.1>null
echo     -----------------------------------------------------------------
ping -n 1 127.0.0.1>null
echo      *********��****************************************************
ping -n 1 127.0.0.1>null
echo        ****************��*****************************************
ping -n 1 127.0.0.1>null
echo          **********************��*******************************
ping -n 1 127.0.0.1>null
echo            *****************��********************************
ping -n 1 127.0.0.1>null
echo              ***********************************************
ping -n 1 127.0.0.1>null
echo                **********һ*******************************
ping -n 1 127.0.0.1>null
echo                  ***********��**************************
ping -n 1 127.0.0.1>null
echo                    ************һ*********************
ping -n 1 127.0.0.1>null
echo                      *************��****************
ping -n 1 127.0.0.1>null
echo                        **************��***********
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
:��˸����S
set /a a=%a%+1
set /a dj=%random%%%9+0
color %dj%
ping -n 1 127.0.0.1>null
if %a%==100 pause & goto main
goto ��˸����S
:CMD����
mode con:cols=80 lines=45
cls
echo ������CMD����С����
echo ������������ٵĻ�ȡ����
echo ����Ҫ��ѯ������:
set /p command=
%command% /?
if %errorlevel%==9009 goto CMD����Err
echo.
echoN -c CF ��ʾ���,�Ƿ񱣴棿
echo 1.����
echo 0.������
set /p choice=
if %choice%==1 goto CMD����
if %choice%==0 goto CMD������
:CMD����
cls
%command% /? >../save/[%command%]����.txt
echo �Ѿ����浽/save/�ļ�����
echoN -c CF �Ƿ�������ļ��У�
echo 1.��
echo 0.��
set /p choice=
if %choice%==1 start ..\save\
if %choice%==0 goto CMD������
:CMD������
cls
echoN -c CF �Ƿ������
echo 1.����
echo 0.�˳������˵�
set /p choice=
if %choice%==1 goto CMD����
if %choice%==0 goto main
:CMD����Err
cls
echoN -c CF �����ָ����Ч
pause
goto CMD����
:���һ��
set choice=1
cls
echo *********************************************************
update https://v1.hitokoto.cn/?encode=text
echo.
echo *********************************************************
echo.
echo.
echo �����������һ��
echo ����0���ص����˵�
set /p choice=
if %choice%==0 goto main
goto ���һ��
:ChilledWindows
cls
echo ����Arrow(JSG)3D��ͼ����...
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
echo �������
echo ���������ʼ
pause >nul
.\ChilledWindows.exe
cls
echo ����� ����
pause
goto main
:PINGʵ�ù���
cls
echo ����ҪPING��IP��ַ/����/������
set /p IP=
cls
echo ����ҪPING�Ĵ���
set /p count=
cls
echo ����ҪPING�����ݰ���С
set /p size=
cls
echo 1.������ִ��
echo 2.���������
set /p choice=
if %choice%==1 goto PINGʵ�ù���-���ִ��
if %choice%==2 goto PINGʵ�ù���-���
:PINGʵ�ù���-���ִ��
cls
echo ping -n %count% -l %size% %ip%
ping -n %count% -l %size% %ip%
pause
cls
echo �����������
echo ����0���ص����˵�
set /p choice=
if %choice%==0 goto main
goto PINGʵ�ù���
:PINGʵ�ù���-���
cls
echo ping -n %count% -l %size% %ip%
pause
cls
echo �����������
echo ����0���ص����˵�
set /p choice=
if %choice%==0 goto main
goto PINGʵ�ù���
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
echo �����˵�Ļ���Ҫ����������Ŷ��
echo �Ѿ�������%ready%��Ŷ 5�ξͻ�����Ŷ
set /p input=
set /a ready=ready+1
if %ready%==5 exit
if %input%==%Password% goto 7XDisplay
goto 7XPWDR
:7XDisplay
cls
color 0D
update http://www.jamsg.cn:51/update/ForNaProgram/7X.txt
echon -c 5F ����,��Ϧ�ڿ���Ӵ
echon -c 5F [��ȥ��]
echon -c 5F �����Ѿ�������...Ϊʲô�������������......
echon -c 5F ����Ӵ,�ҵĺ�����
pause
goto �����˵�Ļ�

:�����˵�Ļ�
color 0F
cls
echon -c 49 �����˵�Ļ�
mode con:cols=57 lines=35
echo ��Щ���������������һ������
echo ��������������
echo �����ڳ�������˵��
echo ����:
ping 127.0.0.1 >nul
echo �������ȥС÷��ʱ��
echo ���㿴����Щ�����ĸ���
echo ����һ����˵����
echo ÿ�������� 
echo �Ҿ�����:�Ǹ������ò��ÿ� 
echo ��˵:�Ǹ�������
echo ��˵:�Ҹ�����ľ������...
echo ��˵:��͸�������ô���İ�?
echo ������Һ�����......
echo ����������������� ���˺ܳ��ܳ�ʱ��
echo �һ���Ϊ���ܿ��� û�뵽������ȴ����仰
echo ����ʱ����ĸо����ر����� ����������ô������
echo ��Ҳϣ����������� ���������˵���Ǿ仰 ���Һ�����
echo ֮����Ҳ��һֱ���ں���
echo �㻹˵ �Ҹ�������㶼��ϲ��
echo ������֮ǰ˵�Ļ���������?
echo ���׿�˵�� ��
echo ���׿�˵�� �ÿ�
echo ��Ӧ�������ĸ���?
echo Ҳ�����Ҷ���̫���˰�
echo �����ѡ����ԭ����
echo ���������������
echo ���������Լ����� Ҫ�����͵�����
echo ����ǲ���ؼ� ��Ҫȥ�Ҽ�
echo ��������ʱ����ĺܲ��뿴����
echo Ҳ������Ϊ�Ҷ������Ǹ��³��ľٶ�������
echo ����һ��ǰ�����Ҽ�ȥ��
echo ��Ҳ�ܿ���
echo ��Ҳ���� ��զ���ľ�զ����
echo ��Ҳ������������϶�����õ�����
echo ����ô��ϧ�� ��ҲҪ��ϧ�Ұ�
echo �ꡣ
echo �������������Ҫ����˵�Ļ�
pause >nul
cls
mode con:cols=57 lines=30
echon -c 94 ���������Ҹ�������ʱҪ����д�Ļ�
ping 127.0.0.1 >nul
echon -c 94 ������� ���Ҹ��㾫����ѡ������
echon -c 94 ��Ҫ�ú���ϧŶ
echon -c 94 �⽫�����������İ���
echon -c 94 �����ɷֵİ���
echon -c 94 �����ϴ�ѧ��ʱ��,�Ͱ�������
echon -c 94 ��Ȼ�Ҳ���������
echon -c 94 �����������,���ҵ�����
echon -c 94 �������������,���� :)
echon -c 94 Ҳϣ�������ܺú������ѧ,��֤
echon -c 94 ���������Զ�����룡
echon -c 94 ��Զ����һ��ɣ�
echon -c 94 ��Զ����Ŷ ����
echo.
echo �����������С����
pause >nul
cls
echo ����Arrow(JSG)��ͼ����...
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
echo ��Զ����Ӵ �ҵĺ�����
echo ������������ �ٺ�
echo ����1���²���
set /p choice=
if %choice%==1 goto draw
pause
goto main
:speed
set choice=err
echo.ִ�������������ӿ������ٶ�
echo.��1��ʼ���� �粻����������0�س�&pause>nul
set /p choice=
if %choice%==0 goto main
echo �������ϵ�y�����ļ���Ո�Ե�......
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
echo.���ϵͳ������ɣ�
echo.�����������&pause>nul
goto main
:speedex
echo ��δ���� �´θ��¿���Ŷ
pause
goto main
:drawhacknumber
cls
echo ���������ʼ ֻ��ͨ���رմ����˳�Ŷ
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
echo ��ȡ������Ϣ...
update http://jam233.tpddns.cn:51/update/%name%/info.txt
echo ��ǰ�汾:%version%
echo ���°汾:%update%*
update http://jam233.tpddns.cn:51/update/%name%/update.txt
pause
goto main
:exit
exit