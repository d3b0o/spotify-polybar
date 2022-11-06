#!/bin/bash

lenght=15

if [[ "$(dbus-send --session --dest=org.freedesktop.DBus --type=method_call --print-reply /org/freedesktop/DBus org.freedesktop.DBus.ListNames)" == *org.mpris.MediaPlayer2.spotify* ]]; then
	artist=$(dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | awk '/artist/{getline; getline; split($0,a,"\""); print a[2]}')
	song=$(dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | awk '/title/{getline; split($0,a,"\""); print a[2]}')
	text="阮 $song - $artist "
    	num_char=$(echo -n $text | wc -c)
	text2=${text// /#}
    

    if [[ $lenght < $num_char ]];then
        letter=$(cat ~/.config/bin/progress.txt)
        times=0
        result=()
        for (( i=0 ; i < ${#text} ; i++ )) {
            a[$i]=${text2:i:1}
        }

        until [ $lenght -lt $times ]; do
            letter=$(($letter + 1))
            times=$(($times + 1))
            if [[ $letter -lt $num_char ]]; then
                result+=(${a[$letter]})
            
            else
                letter=-1

            fi
            
        done

        echo $(($letter - $times + 1)) > ~/.config/bin/progress.txt
	echo ${result[@]} | tr -d " " | tr "#" " " 

    else
        echo $text
    fi

else 
	echo ""
fi
