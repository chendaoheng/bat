@title ????
@echo ???bat??????????????????
@echo search result:>F:\NotepadFile\result.txt
@set /p hcy= ????1??????2???????
@if %hcy%==1 goto accurate
@if %hcy%==2 goto vague

:accurate
set /p hcy= ????????????????
for %%i in (c d e f g h) do dir /s /b %%i:\"%hcy%" >>F:\NotepadFile\result.txt 2>nul
@echo ?????????list.txt?????????????
pause>nul

:vague
@set /p hcy= ?????????????
for %%i in (c d e f g h) do dir /s /b %%i:\"*%hcy%*".* >>F:\NotepadFile\result.txt 2>nul
@echo ?????????list.txt?????????????
pause>nul