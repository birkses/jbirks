sudo pacman -S zathura zathura-pdf-mupdf feh ffmpeg mpv pywal xmonad xorg-xrandr terminus-font xmonad-contrib nvidia gvim ranger compton redshift trash-cli cmake xorg-server

systemctl enable dhcpd
systemctl start dhcpd

systemctl enable ntpd
systemctl start ntpd

# systemctl --user daemon-reload
# systemctl enable redshift --user
# systemctl restart redshift --user
