#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}


# set wallpaper
#wal -i "/usr/share/backgrounds/archlinux"
wal -i "/usr/share/backgrounds/looplinux-wallpaper-v2/82.jpg"
$HOME/.config/polybar/launch.sh &
#$HOME/.conky/conky-pywal/start_conky.sh
xsetroot -cursor_name left_ptr &
conky -c $HOME/.config/bspwm/looplinux.conkyrc &
run "$HOME/.config/bspwm//scripts/dualscreen.sh" &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
#run plank &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
#blueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &

