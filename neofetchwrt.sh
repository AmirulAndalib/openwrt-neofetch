echo "Downloading neofetch"
logger "installer[$$] : Downloading neofetch"
wget -O /bin/neofetch "https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch"
chmod +x /bin/neofetch
echo "setting up neofetch..."
opkg install bash
sed -i 's/\[ -f \/etc\/banner \] && cat \/etc\/banner/#&/' /etc/profile
sed -i 's/\[ -n "$FAILSAFE" \] && cat \/etc\/banner.failsafe/& || \/bin\/neofetch/' /etc/profile
