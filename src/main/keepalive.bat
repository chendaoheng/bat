 :: 守护进程V1   author:skill
@title keepalive-dataHandle
@echo off
 set taskTitle=aliveTask

:check
:: 判断当前用户本机下进程标题为“aliveTask”的进程是否存在
tasklist /V /S localhost /U %username% >..\out\temp_process_list.txt
type ..\out\temp_process_list.txt | find "%taskTitle%"

if errorlevel 1 goto 1
if errorlevel 0 goto 0

:0
echo %taskTitle% still alive.
goto init

:1
echo  %taskTitle% starting...
start ..\task\%taskTitle%.bat
echo %taskTitle% startup date: %DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%>>  ..\out\aliveLog.txt
goto init

:init
del ..\out\temp_process_list.txt
::延时时间单位是秒
choice /t 60 /d y /n >nul
goto check