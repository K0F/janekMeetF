#!/bin/bash
#source /home/pi/.bashrc
export PATH=$PATH:/usr/bin:/usr/local/bin:/sbin/

(sleep 1s && echo -n p | /usr/bin/socat - UDP4-DATAGRAM:192.168.0.255:7777,so-broadcast)&
(sleep 2s && echo -n i | /usr/bin/socat - UDP4-DATAGRAM:192.168.0.255:7777,so-broadcast)&
(sleep 2s && echo -n i | /usr/bin/socat - UDP4-DATAGRAM:192.168.0.255:7777,so-broadcast)&
(sleep 2s && echo -n i | /usr/bin/socat - UDP4-DATAGRAM:192.168.0.255:7777,so-broadcast)&
(sleep 3s && echo -n p | /usr/bin/socat - UDP4-DATAGRAM:192.168.0.255:7777,so-broadcast)&
