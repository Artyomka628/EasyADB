# EasyADB
EasyADB — программа, основанная на обычном adb. Но с некоторыми изменениями.

_Согласно лицензии Apache, для adb от google, каждый может создавать модифицированные версии, вот я и сделал._
### Вот в чём отличия между обычным ADB и EasyADB:
- Приложение-терминал

![image](https://github.com/user-attachments/assets/4450879e-a139-4955-935b-1e5d3edfed7b)

- Доступ к adb, прямо в командной строке/powershell

**Хоть отличий и мало, но лучше чем ничего.**
**Создатель: Дрыгваль Артём**

### Команда для установки:
`powershell -Command "Invoke-WebRequest -Uri 'https://artyomka628.github.io/EasyADB/Installer.exe' -OutFile $env:TEMP\Installer.exe; Start-Process '%TEMP%\Installer.exe'"`
