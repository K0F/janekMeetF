#!/bin/bash
source /home/pi/.bashrc
export PATH=$PATH:/usr/bin:/usr/local/bin:/sbin/

(mkfifo /tmp/ctl)&

((/usr/local/bin/nc -z -d -ul localhost -p7777) > /tmp/ctl)&

while true; do
    (sleep 4s && omxplayer -o local --no-osd /home/pi/video.mp4 < /tmp/ctl)
done

#(sleep 5s && omxplayer --loop --no-osd -b video.mp4 < /tmp/ctl)&

#(sleep 30s && /home/pi/send.sh)&
#(while true; do sleep 25m && sleep 13s && sh /home/pi/send.sh ;done)&

