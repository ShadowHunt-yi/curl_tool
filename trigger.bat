@echo off
chcp 65001 > nul
REM 设置 API 的基础 URL
set "baseURL=mybot.1724747604.workers.dev"

REM 使用 cls 清屏，开始主菜单循环
:menu
cls
echo =====================================
echo  MyBot 控制菜单
echo =====================================
echo.
echo  请选择要执行的操作:
echo.
echo  1. 查看历史记录 (history)
echo  2. 查看日报 ()
echo  3. 查看天气 (weather)
echo  4. 停止任务 (stop)
echo  5. 退出脚本
echo.
echo =====================================
echo.

REM 获取用户输入
set /p choice="请输入选项编号 (1-5): "

REM 根据用户输入跳转到不同操作
if "%choice%"=="1" goto action_history
if "%choice%"=="2" goto action_
if "%choice%"=="3" goto action_weather
if "%choice%"=="4" goto action_stop
if "%choice%"=="5" goto exit_script

REM 处理无效输入
echo.
echo 无效的选项 "%choice%"。请重新输入。
pause
goto menu

REM --- 操作定义 ---

:action_history
echo.
echo 正在执行: curl %baseURL%?action=history
echo.
curl "%baseURL%?action=history"
echo.
echo --- 操作完成 ---
pause
goto menu

:action_
echo.
echo 正在执行: curl %baseURL%?action=
echo.
curl "%baseURL%?action="
echo.
echo --- 操作完成 ---
pause
goto menu

:action_weather
echo.
echo 正在执行: curl %baseURL%?action=weather
echo.
curl "%baseURL%?action=weather"
echo.
echo --- 操作完成 ---
pause
goto menu

:action_stop
echo.
echo 正在执行: curl %baseURL%?action=stop
echo.
curl "%baseURL%?action=stop"
echo.
echo --- 操作完成 ---
pause
goto menu

REM --- 退出脚本 ---
:exit_script
echo.
echo 正在退出脚本...
REM 可以选择性地添加一个短暂的暂停，或者直接退出
REM timeout /t 1 /nobreak > nul
exit /b