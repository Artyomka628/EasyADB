cd %~dp0
echo off
cls
chcp 65001
echo off
cd %~dp0
cls
echo.
echo.
echo                ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                ┃                     Текстовый установщик EasyADB                       ┃
echo                ┃                                                                        ┃
echo                ┃   Добро пожаловать в установщик EasyADB. Этот мастер, проведёт вас     ┃
echo                ┃                       по всем этапам установки.                        ┃
echo                ┃                                                                        ┃
echo                ┃                                                                        ┃
echo                ┃                 Нажмите любую клавишу для продолжения...               ┃
echo                ┃                                                                        ┃
echo                ┃                                                                        ┃
echo                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
pause >nul
cls
:setpath
echo.
echo.
echo                ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                ┃                         Выбор папки установки                          ┃
echo                ┃                                                                        ┃
echo                ┃         Выберите папку, куда вы хотите установить EasyADB...           ┃
echo                ┃                                                                        ┃
echo                ┃         1) Стандартный путь — C:\Program Files\EasyADB                 ┃
echo                ┃                                                                        ┃
echo                ┃         2) Свой путь — Вы сами выбираете путь установки                ┃
echo                ┃                                                                        ┃
echo                ┃                                                                        ┃
echo                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
set /p variant=Варимант: 
if "%variant%"=="1" set installpath=C:\Program Files\EasyADB\
if "%variant%"=="1" goto license
if "%variant%"=="2" goto ownpath
cls & echo. & echo Гениально. Вы что там надумали? Кроме этих двух, ничего нельзя. Давайте попробуем ещё раз. & goto setpath
:ownpath
echo.
echo.
echo                ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                ┃                         Выбор папки установки                          ┃
echo                ┃                                                                        ┃
echo                ┃         Выберите папку, куда вы хотите установить EasyADB...           ┃
echo                ┃                                                                        ┃
echo                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
set /p installpath=Путь установки: 
:license
cls
echo.
echo.
echo                ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                ┃                        Лицензинное соглашение                          ┃
echo                ┃                                                                        ┃
echo                ┃               Продолжая установку, вы соглашаетесь с...                ┃
echo                ┃                                                                        ┃
echo                ┃    Лицензионным соглашением ADB от Google, на основе лицензии Apache   ┃
echo                ┃                                                                        ┃
echo                ┃                  Нажмите любую клавишу, чтобы принять...               ┃
echo                ┃                                                                        ┃
echo                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
pause >nul
:installready
cls
echo.
echo.
echo                ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                ┃                        Всё готово к установке                          ┃
echo                ┃                                                                        ┃
echo                ┃           Чтобы начать установку, нажмите любую клавишу...             ┃
echo                ┃                                                                        ┃
echo                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
pause >nul
:installing
cls
echo.
echo.
echo                ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                ┃                          Установка EasyADB...                          ┃
echo                ┃                                                                        ┃
echo                ┃           Подождите, пока установщик сделает своё дело...              ┃
echo                ┃                                                                        ┃
echo                ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
start "Скачивание EasyADB" /wait /realtime aria2c -x 16 -s 16 -j 1 --file-allocation=none --summary-interval=1 --download-result=full --out=Program.zip https://artyomka628.github.io/EasyADB/Program.zip
start "Распаковка EasyADB" /wait /realtime powershell -Command "Expand-Archive -Path 'program.zip' -DestinationPath $env:installpath"
setx PATH "%PATH%;%installpath%\adb"
set "iconpath=%installpath%\adb\icon.ico"
set "shortcutpath=%UserProfile%\Desktop\EasyADB.lnk"
start powershell -Command "Invoke-WebRequest -Uri 'https://artyomka628.github.io/EasyADB/icon.ico' -OutFile '%iconpath%'"
start powershell -Command "$WScriptShell = New-Object -ComObject WScript.Shell; $Shortcut = $WScriptShell.CreateShortcut('%shortcutpath%'); $Shortcut.TargetPath = '%installpath%\app.bat'; $Shortcut.IconLocation = '%iconpath%'; $Shortcut.Save()"
pause