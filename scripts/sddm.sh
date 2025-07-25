git clone https://aur.archlinux.org/sddm-theme-tokyo-night.git
cd sddm-theme-tokyo-night
makepkg -Ccsi

cp "./files/sddm.conf" "/etc/sddm.conf"

sudo systemctl enable sddm --now
