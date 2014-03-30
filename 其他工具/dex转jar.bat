@echo off
TITLE APK简易工具箱
color 0a
if (%1)==() (
	echo 操作错误&&echo.
	pause
	goto help
)
echo.
echo.
echo              J M M J      EE  f M M J     EE  f M M J         J M M J 
echo            A         AA   EE p        AA  EE p       AA     A         AA 
echo           E          AAA  EE         AAA  EE         AAA   E          AAA
echo            Y         AA   EEY        AA   EEY        AA     Y         AA
echo              L M M J      EE  L M M J     EE  L M M J         L M M J
echo                           EE              EE
echo                           EE              EE
echo.
echo wuxianlin制作
echo http://bbs.myoppo.com
echo OPPO社区-玩机评测组
echo 正在转化%~dp1%~nx1...
goto decode
:decode
set CLASSPATH=
for %%i in ("%~dp0Tools\lib\*.jar") do call "%~dp0Tools\lib\setclasspath.bat" %%i
java -Xms512m -Xmx1024m -cp "%CLASSPATH%" com.googlecode.dex2jar.v3.Main "%1"
if errorlevel 1 goto error
goto end

:error
echo.
echo  失败
pause
exit

:end
echo.
echo 转化完成
echo 谢谢使用！
pause
exit
:help
echo.
echo.本工具使用方法
echo.
echo.将您要反编译的apk直接拖到本bat文件
echo.
echo.不会使用本工具请联系作者：wuxianlin
echo.
echo.QQ:571716775
echo.
pause
exit