current_date=$(date +%Y-%m-%d)
dest="$HOME/images/screenshots/$current_date/"
[ -d $dest ] && echo "" || mkdir $dest
scrot -s -f $dest'%Y-%m-%d_$wx$h.png' -e 'optipng $f | xclip -sel clipboard -t "image/png" <$f'
