# Screenshot-Uploader

xclip

inotify-tools

##Why:##
I looked around for a little while and couldn't find any image capturing software for Ubuntu that I actually liked, so I figured I would just make my own.

##How it Works:##
I used `libnotify-tools` to watch my Pictures directory for file creations. When it detects a file creation, it renames it to an 8 character randomly generated String, uploads it to my Web Server using `lftp`, then copies the path to my clipboard using `xclip`.
