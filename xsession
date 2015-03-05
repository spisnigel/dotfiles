#!/bin/sh
#
# ~/.xsession

xsetroot -solid "#002b36"

#setxkbmap -option compose:caps
setxkbmap -option compose:ralt

xbindkeys -f $HOME/.config/xbindkeys &
unclutter &

# http://mutelight.org/subtleties-of-the-x-clipboard
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

# http://darknet.co.za/blog/?page=posts.2013
#   &post=2013-07-23-customizing-a-new-install.md
udisks-glue &

xautolock -time 15 -locker screenlock &

nm-applet 2>/dev/null &

xset b off
xset s off

exec i3
