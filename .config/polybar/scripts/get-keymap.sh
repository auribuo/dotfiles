echo $(setxkbmap -query | grep layout | sed "s/layout://g" | sed "s/ *//g")