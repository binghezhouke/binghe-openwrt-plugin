include $(TOPDIR)/rules.mk

PKG_NAME:=binghe-openwrt-plugin
PKG_VERSION:=1.0.0
PKG_RELEASE:=20220612
PKG_MAINTAINER:=binghezhouke <https://github.com/bignhezhouke>

include $(INCLUDE_DIR)/package.mk

define Package/binghe-openwrt-plugin
	SECTION:=net
	CATEGORY:=Network
	TITLE:=binghe openwrt plugin
endef

define Package/binghe-openwrt-plugin/description
	binghe's tools,doh,v2ray,ddns included
endef

define Build/Prepare
	echo "$(DL_DIR)"
	echo "$(PKG_SOURCE)"
	echo "$(PKG_BUILD_DIR)"
	cp -rp * $(PKG_BUILD_DIR)
	ls -l $(PKG_BUILD_DIR)
endef

define Build/Compile
	echo "$(PKG_NAME)Compile Skipped!"
endef

define Package/binghe-openwrt-plugin/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/doh $(1)/usr/bin/doh
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ddns_ali $(1)/usr/bin/ddns_ali
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/v2ray $(1)/usr/bin/v2ray
endef

$(eval $(call BuildPackage,binghe-openwrt-plugin))
