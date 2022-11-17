diff /tmp/package/Makefile  mypackages/examples/neofetch/Makefile
15d14
<       DEPENDS:=+bash
27,38c26,27
<       if [ -n `ls $(PKG_BUILD_DIR)/shadowtunnel-$(PKG_VERSION)/$(PKG_VERSION)/neofetch` ]
<       then
<               cd $(PKG_BUILD_DIR)/shadowtunnel-$(PKG_VERSION)/$(PKG_VERSION)/neofetch/
<               git pull
<               rm -f !(neofetch)
<               chmod +x neofetch
<       else
<               git clone https://github.com/dylanaraps/neofetch.git $(PKG_BUILD_DIR)/shadowtunnel-$(PKG_VERSION)/$(PKG_VERSION)/neofetch
<               cd $(PKG_BUILD_DIR)/shadowtunnel-$(PKG_VERSION)/$(PKG_VERSION)/neofetch/
<               rm -f !(neofetch)
<               chmod +x neofetch
<       fi
---
>       git clone https://github.com/dylanaraps/neofetch.git $(PKG_BUILD_DIR)/shadowtunnel-$(PKG_VERSION)/$(PKG_VERSION)/neofetch
>       chmod +x $(PKG_BUILD_DIR)/shadowtunnel-$(PKG_VERSION)/$(PKG_VERSION)/neofetch/neofetch
49c38
<       $(INSTALL_BIN) $(PKG_BUILD_DIR)/ $(1)/usr/bin/
---
>       $(INSTALL_BIN) $(PKG_BUILD_DIR)/shadowtunnel-$(PKG_VERSION)/$(PKG_VERSION)/neofetch/neofetch $(1)/usr/bin/
