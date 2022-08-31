# spotify-polybar
Modules to Control spotify from the polybar (Each module is independent)

Modulos Para Controlar spotify desde la polybar (Cada modulo es independiente)
```
git clone https://github.com/d3b0o/spotify-polybar

cd spotify-polybar

mkdir ~/.config/bin

chmod +x song.sh

mv play.py next.py previous.py song.sh ~/.config/bin/
```
### Module Play/Pause
```
[module/play]
type = custom/script
exec = python ~/.config/bin/play.py
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
```
### Module Previous
```
[module/previous]
type = custom/script
exec = python ~/.config/bin/previous.py
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
```
### Module Next
```
[module/next]
type = custom/script
exec = python ~/.config/bin/next.py
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
```
### Module Song
```
[module/song]
type = custom/script
exec = ~/.config/bin/song.sh
interval = 1
format-prefix = "  "
format = <label>
```

