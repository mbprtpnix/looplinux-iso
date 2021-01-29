#!/bin/bash
echo "#################################"
echo "Start looplinux-before.sh"
echo "#################################"

echo "Populate Core Team keys"
echo "#################################"
pacman-key --init
pacman-key --populate archlinux
pacman-key --populate looplinux


echo "Changing into our own linux.preset"
echo "#################################"
mv /etc/mkinitcpio.d/looplinux /etc/mkinitcpio.d/linux.preset

echo "#################################"
echo "End looplinux-before.sh"
echo "#################################"
rm /usr/local/bin/looplinux-before.sh
