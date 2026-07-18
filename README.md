TIMBER SHIFT — ВЫДЕЛЕННЫЙ СЕРВЕР

ЧТО ЭТО
Сервер запускается без окна, графики, камеры и звука. Он хранит общий мир,
сохранения гостей, время суток и принимает до четырёх игроков одновременно.

НАСТРОЙКА
Откройте server.cfg обычным Блокнотом:
- port — UDP-порт сервера, по умолчанию 27835;
- autosave_seconds — период автосохранения;
- name — название мира. После перезапуска сервер найдёт мир с таким именем;
- id — точный идентификатор существующего мира, если нужно выбрать его явно;
- seed — seed только для первого создания нового мира. 0 означает случайный.

WINDOWS
1. Запустите «Allow Coop Through Firewall.cmd» и подтвердите права администратора.
2. Запустите «Start Dedicated Server.cmd».
3. Дождитесь строки DEDICATED_SERVER_READY.
4. Игроки подключаются к IP сервера и UDP-порту из server.cfg.

LINUX VPS
1. Разрешите входящий UDP-порт 27835 в панели VPS и firewall Linux.
2. Выполните: chmod +x TimberShiftDedicatedServer.x86_64 "Start Dedicated Server.sh"
3. Запустите: ./Start\ Dedicated\ Server.sh
4. Для постоянной работы используйте приложенный systemd-сервис.

СОХРАНЕНИЯ
Windows: %APPDATA%\Godot\app_userdata\Timber Shift Prototype\worlds
Linux: ~/.local/share/godot/app_userdata/Timber Shift Prototype/worlds
Файл server.log лежит рядом с сервером.

ПАРАМЕТРЫ КОМАНДНОЙ СТРОКИ
--port=27835
--world-name="Название"
--world-id=world_...
--seed=12345
--autosave=10

Для подключения через интернет VPS должен иметь публичный IPv4. Сервер использует UDP.
