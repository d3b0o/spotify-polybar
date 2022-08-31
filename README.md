# spotify-polybar
Modulos Para Controlar spotify desde la polybar (Cada modulo es independiente)
### Module Play
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
