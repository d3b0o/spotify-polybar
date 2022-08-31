# spotify-polybar

### Module PLay
```
[module/play]
type = custom/script
exec = python ~/.config/bin/play.py
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
```
```
[module/previous]
type = custom/script
exec = python ~/.config/bin/ant.py
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
```
```
[module/next]
type = custom/script
exec = python ~/.config/bin/next.py
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
```
