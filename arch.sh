feh
ffmpeg
mpv
pywal
xmonad
terminus-font
sudo pacman -S zathura-pdf-mupdf
sudo pacman -S zathura

xmonad-contrib

nvidia drivers
gvim for clipboard

systemctl start dhcpd
systemctl enable dhcpd

systemctl start ntpd
systemctl enable ntpd

systemctl --user daemon-reload
systemctl enable redshift --user
systemctl restart redshift --user

# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

