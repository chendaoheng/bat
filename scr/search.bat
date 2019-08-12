@title 文件检索
@echo 使用本bat文件可全盘查找所有文件夹下的指定文件
@echo search result:>F:\NotepadFile\result.txt
@set /p hcy= 请输入（1为精确查找，2为模糊查找）：
@if %hcy%==1 goto accurate
@if %hcy%==2 goto vague

:accurate
set /p hcy= 请输入要查找的文件名，包含后缀：
for %%i in (c d e f g h) do dir /s /b %%i:\"%hcy%" >>F:\NotepadFile\result.txt 2>nul
@echo 输出成功，请查看“list.txt”文件；任意键返回主菜单！
pause>nul

:vague
@set /p hcy= 请输入要查找的文件名字符：
for %%i in (c d e f g h) do dir /s /b %%i:\"*%hcy%*".* >>F:\NotepadFile\result.txt 2>nul
@echo 输出成功，请查看“list.txt”文件；任意键返回主菜单！
pause>nul