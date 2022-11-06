# spotify-polybar

![alt text](https://github.com/d3b0o/spotify-polybar/blob/main/examples/example1.png)
![alt text](https://github.com/d3b0o/spotify-polybar/blob/main/examples/example2.png)

Song.sh

![alt text](https://github.com/d3b0o/spotify-polybar/blob/main/examples/example3.png)

Animated.sh

![alt text](https://github.com/d3b0o/spotify-polybar/blob/main/examples/2022-11-06 11-07-18.gif)



Modules to Control spotify from the polybar (Each module is independent)

Modulos Para Controlar spotify desde la polybar (Cada modulo es independiente)
```
git clone https://github.com/d3b0o/spotify-polybar

cd spotify-polybar

mkdir ~/.config/bin

chmod +x song.sh play.sh next.sh previous.sh animated.sh

mv play.sh next.sh previous.sh song.sh animated.sh ~/.config/bin/

touch ~/.config/bin/progress.txt

echo "1" > ~/.config/bin/progress.txt


```
### Module Play/Pause
```
[module/play]
type = custom/script
exec = ~/.config/bin/play.sh
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
```
### Module Previous
```
[module/previous]
type = custom/script
exec = ~/.config/bin/previous.sh
interval = 1
;format-prefix = "  "
format = <label>
click-left = dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
```
### Module Next
```
[module/next]
type = custom/script
exec = ~/.config/bin/next.sh
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
### Module Animated - Song
```
[module/animated-song]
type = custom/script
exec = ~/.config/bin/animated.sh
interval = 1
format = <label>
```
Pon en interval la velocidad que quieres que tenga el texto

Pon en la variable lenght del archivo animated.sh el limite de caracteres
