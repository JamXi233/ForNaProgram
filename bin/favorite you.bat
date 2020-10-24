@echo off
title 送给最爱的人
:an
cls
echon -c 0f 请选择自己的昵称：
echon -c 0B           ├a.席宁阳
echon -c 0C           └b.老公
echo **********************
set /p name=
if %name%==a goto xny
if %name%==b goto lg

:xny
cls
echo 请选择自己在你老婆心中的地位：
echo                           1.爱人
echo                           3.永远相依相伴的人 
echo                           z.退出
set /p dw=
if %dw%==1 goto one
if %dw%==3 goto three
if %dw%==z goto an

:lg
cls
echon -c 0d z.小可爱
echon -c 0b 2.小傲娇
echon -c 07 y.小霸道
echon -c 0f x.退出
set /p jr=
if %jr%==z goto lovely 
if %jr%==2 goto forever
if %jr%==y goto 7c
if %jr%==x goto an

:one
cls
echon -c 0f 2020年4月6日，第一次给你做的程序，因为惹你生气了。
echon -c 0f 还是用c语言编的，我刚编上，然后忘记了因为什么就不编了...
echo            "#include<stdio.h>"
echo             "main()"
echo             {"
echo               int i;"
echo               printf("The moonlight toight is really beautiful\n");"
echo               "for(i=1;i<=4;i++)"
echo                 printf("happy a few 哟!!!\n");"
echo                 getch();"
echo             }"
pause
goto xny

:three
cls
start file:///C:/Users/Administrator.QH-20160716TPOL/Desktop/TEST/Untitled-1.html
pause
goto xny

:7c
cls
echon -c 0e 七夕快乐呀，我的小笨蛋！
echon -c 0c 我好爱你呀
echon -c 08 今天是我和你相处的五个月零12天，也是经历了一个情人节了.. 
echon -c 0f 和你相处了这么长时间，你对我真的挺好的，我也能看出你非常很爱我，咱俩永远都不会离开。以前咱俩总吵架，但是咱俩现在还在一起呢，这一切都是命中注定的呢。嘿嘿嘿
echon -c 0f 有的时候你说我不哄你，还有我总能把你哄好。说句实在的我这个人嘴笨，啥都不会说，更不会哄人了。有时候我哄不好你，我自己还生气呢，哈哈。
echon -c 07 你为我改变了很多，但是...我好像没有为你改变什么。
echon -c 07 我这个人说话也是这样，有的时候不经意的一句话也会惹你不开心，惹你生气，但是我真的不是故意惹你的。我不想让你难受生气。
echon -c 06 2020年08月22日，咱俩这一天也没怎么说话，你知道我有多想你吗。当时我就在想哦，在家都这样，以后上大学了一天都不一定能说上几句话，那我可怎么办啊，不得想死你啊，我还不知道你在干什么，唉，都是我没用，没有能力和你考上一个大学。我感觉我就是那种不学无术的人。（不知道词语用的对不对）
echon -c 08 我以为我已经变得很坚强了，没想到还是这么脆弱。
echon -c 03 七夕了！其实我好想去痛痛快快的玩一天，可是那天报考，我想快点报，我怕都报满了我在没有学校去，哈哈。
echon -c 08 我说话没有顺序，想到什么就说什么了，我的小傻瓜，好爱你。
echon -c 0c 最有一句“焦娜永远爱席宁阳”
echon -c 0f 2020年08月23日18:43分，要七夕了，你要给我做程序，然后让我看了一点点。我看见七夕要好好享受，可是那天是我报考的时间。然后你问我会不会不开心，我说会。然后你就删掉了好多字，我说不许删，可是那时候你已经删了，还没办法还原，只能一个一个字打，唉。从1000字变成500字，现在还要打回来，心疼你。你对我太好了?
echon -c 0b 你让我看了你做得动图爱心，两颗心慢慢合成为一个心，看完之后都要哭了，我真的好感动啊！！！
pause
goto lg

:lovely
cls
echon -c 0f 好喜欢你哼哼哼和要抱抱的小可爱样。太喜欢啦！
echon -c 0f 啊啊啊！好爱你呀，嘿嘿嘿。
pause
goto lg

:forever
cls
echo           送给老公     别嫌弃
echo        席宁阳我爱你   爱你一辈子
echo      老公老公老公老公 爱你爱你爱你
echo   我们会一辈子永远的在一起的永远都爱你
echo     嘿嘿嘿你永远都是我的小可爱么么哒
echo        誓言永远都成立梦想也会实现
echo           我们都要努力为了将来
echo             只要心连心永不变
echo               希望你会喜欢
echo                 我尽力了
echo                   老公
pause
goto lg