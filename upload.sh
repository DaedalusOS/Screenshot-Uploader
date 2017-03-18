id=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)

mv /home/daedalus/Pictures/*.png /home/daedalus/Pictures/$id.png  

lftp -c "open -u images,PASS HOSTNAME; put /home/daedalus/Pictures/$id.png && chmod 775 $id.png"

echo "http://bbutner.me/screenshots/$id.png" | xclip -selection clipboard

rm Pictures/$id.png
