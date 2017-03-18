rm Pictures/*.*

while true 
do
inotifywait -r -e create /home/daedalus/Pictures && /bin/bash upload.sh
done
