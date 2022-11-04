import dbus
import sys

lenght = 30

def fix_string(string):
    # corrects encoding for the python version used
    if sys.version_info.major == 3:
        return string
    else:
        return string.encode('utf-8')

try:
    session_bus = dbus.SessionBus()
    spotify_bus = session_bus.get_object(
        'org.mpris.MediaPlayer2.spotify',
        '/org/mpris/MediaPlayer2'
    )

    spotify_properties = dbus.Interface(
        spotify_bus,
        'org.freedesktop.DBus.Properties'
    )

    metadata = spotify_properties.Get('org.mpris.MediaPlayer2.Player', 'Metadata')
    status = spotify_properties.Get('org.mpris.MediaPlayer2.Player', 'PlaybackStatus')

    artist = fix_string(metadata['xesam:artist'][0]) if metadata['xesam:artist'] else ''
    song = fix_string(metadata['xesam:title']) if metadata['xesam:title'] else ''


    texto = " 阮 {} - {} ".format(song, artist)

    if lenght < len(texto):
        f = open('~/.config/bin/progress.txt', 'r')
        a = list(texto)
        veces = 0
        result = []
        letra = int(f.read())
        while True:
            letra += 1
            veces += 1
            try:
                result.append(a[letra])
            except:
                letra = -1

            if veces == lenght:
                break

        for i in result:
            print(i, end="")
        f.close()
        f = open('~/.config/bin/progress.txt', 'w')
        new = str(letra - veces + 1)
        f.write(new)
        f.close

    else:
        print(texto)

except:
    print("No song")



