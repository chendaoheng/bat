:: 使用本bat文件可全盘查找所有文件夹下的指定文件  author:skill
@title File search
@echo search result:>..\out\result.txt
::1精确，2模糊
@set /p hcy= Please enter 1 to accurate search, 2 to vague search:
@if %hcy%==1 goto accurate
@if %hcy%==2 goto vague

:accurate
set /p hcy= Please enter the exact file name:
for %%i in (c d e f g h) do dir /s /b %%i:\"%hcy%" >>..\out\result.txt 2>nul
::输出成功，请查看“list.txt”文件；任意键返回主菜单！
@echo Successful output, please check the "list. txt" file; any key to return to the main menu!
pause>nul

:vague
@set /p hcy=Please enter the name character of the file you are looking for:
for %%i in (c d e f g h) do dir /s /b %%i:\"*%hcy%*".* >>..\out\result.txt 2>nul
::输出成功，请查看“list.txt”文件；任意键返回主菜单！
@echo Successful output, please check the "list. txt" file; any key to return to the main menu!
pause>nul