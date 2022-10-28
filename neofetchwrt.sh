echo -e "\e[32m[INFO]: Downloading Neofetch.\e[0m"
wget -O /bin/neofetch "https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch"
echo -e "\e[32m[INFO]: Installing bash.\e[0m"
opkg install bash
echo -e "\e[32m[INFO]: Installing Neofetch.\e[0m"
chmod -R +x /bin/neofetch
echo -e "\e[32m[INFO]: Backing up Neofetch directories.\e[0m"
cat << EOF >> /etc/sysupgrade.conf
/bin/neofetch
EOF
echo -e "\e[32m[INFO]: Making Neofetch to show up in the openwrt ssh login banner.\e[0m"
sed -i 's/\[ -f \/etc\/banner \] && cat \/etc\/banner/#&/' /etc/profile
sed -i 's/\[ -n "$FAILSAFE" \] && cat \/etc\/banner.failsafe/& || \/bin\/neofetch/' /etc/profile

