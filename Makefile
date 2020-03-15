
prefix?=/usr/local
target=$(DESTDIR)$(prefix)
doctarget=$(target)/share/doc/rescapp
icontarget=$(target)/share/icons/rescapp
desktopiconstarget=$(target)/share/icons/hicolor
applicationtarget=$(target)/share/applications
bintarget=$(target)/bin
helpertarget=$(target)/bin
imagetarget=$(target)/share/rescapp/images
librarytarget=$(target)/lib/rescapp
menutarget=$(target)/share/rescapp/menus
plugintarget=$(target)/share/rescapp/plugins
versiontarget=$(target)/share/rescapp
dbussystemconftarget=$(DESTDIR)/etc/dbus-1/system.d

all:
.PHONY	:	all

#	gparted_install_documentation
#	grubeasy_install_documentation
#	photorec_install_documentation
#	testdisk_install_documentation
#	web_install_documentation
install_documentation:	about-rescapp_install_documentation	about-rescapp_build_documentation\
	bootinfoscript_install_documentation	bootinfoscript_build_documentation\
	chat_install_documentation	chat_build_documentation\
	chpasswd_install_documentation	chpasswd_build_documentation\
	fsck_install_documentation	fsck_build_documentation\
	gpt-check-bios-grub_install_documentation	gpt-check-bios-grub_build_documentation\
	gpt-create-hybrid-mbr_install_documentation	gpt-create-hybrid-mbr_build_documentation\
	gpt-recompute-hybrid-mbr-chs_install_documentation	gpt-recompute-hybrid-mbr-chs_build_documentation\
	grub-install_install_documentation	grub-install_build_documentation\
	grubeasy_install_documentation	grubeasy_build_documentation\
	help-rescapp_install_documentation	help-rescapp_build_documentation\
	share_log_install_documentation	share_log_build_documentation\
	share_log_forum_install_documentation	share_log_forum_build_documentation\
	show_log_install_documentation	show_log_build_documentation\
	sudoers_install_documentation	sudoers_build_documentation\
	ueficheck_install_documentation	ueficheck_build_documentation\
	ueficreate_install_documentation	ueficreate_build_documentation\
	uefifakemicrosoft_install_documentation	uefifakemicrosoft_build_documentation\
	uefihidemicrosoft_install_documentation	uefihidemicrosoft_build_documentation\
	uefiorder_install_documentation	uefiorder_build_documentation\
	uefipartstatus_install_documentation	uefipartstatus_build_documentation\
	uefireinstallmicrosoft_install_documentation	uefireinstallmicrosoft_build_documentation\
	update-grub_install_documentation	update-grub_build_documentation\
	wineasy_install_documentation	wineasy_build_documentation\
	winmbr_install_documentation	winmbr_build_documentation\
	winpass_install_documentation	winpass_build_documentation\
	winpromote_install_documentation	winpromote_build_documentation\
	winunlock_install_documentation	winunlock_build_documentation\
	not-documented_install_documentation	not-documented_build_documentation\
	inxi_install_documentation	inxi_build_documentation


install:	install_documentation\
	install_icons\
	install_desktopicons\
	install_applications\
	install_binaries\
	install_helpers\
	install_images\
	install_libraries\
	install_menus\
	install_plugins\
	install_version\
	install_dbussystemconf\



about-rescapp_installdocimages_directory = $(subst /,_,$(wildcard plugins/about-rescapp/images))

$(about-rescapp_installdocimages_directory):	plugins/about-rescapp/images/*
	install -d $(doctarget)/plugins/about-rescapp/images/
	install -m 644 plugins/about-rescapp/images/* $(doctarget)/plugins/about-rescapp/images/

about-rescapp_install_documentation	about-rescapp_build_documentation:	plugins/about-rescapp/*html	$(about-rescapp_installdocimages_directory)
	install -d $(doctarget)/plugins/about-rescapp/
	install -m 644 plugins/about-rescapp/*html $(doctarget)/plugins/about-rescapp/





bootinfoscript_installdocimages_directory = $(subst /,_,$(wildcard plugins/bootinfoscript/images))

$(bootinfoscript_installdocimages_directory):	plugins/bootinfoscript/images/*
	install -d $(doctarget)/plugins/bootinfoscript/images/
	install -m 644 plugins/bootinfoscript/images/* $(doctarget)/plugins/bootinfoscript/images/

bootinfoscript_install_documentation	bootinfoscript_build_documentation:	plugins/bootinfoscript/*html	$(bootinfoscript_installdocimages_directory)
	install -d $(doctarget)/plugins/bootinfoscript/
	install -m 644 plugins/bootinfoscript/*html $(doctarget)/plugins/bootinfoscript/





chat_installdocimages_directory = $(subst /,_,$(wildcard plugins/chat/images))

$(chat_installdocimages_directory):	plugins/chat/images/*
	install -d $(doctarget)/plugins/chat/images/
	install -m 644 plugins/chat/images/* $(doctarget)/plugins/chat/images/

chat_install_documentation	chat_build_documentation:	plugins/chat/*html	$(chat_installdocimages_directory)
	install -d $(doctarget)/plugins/chat/
	install -m 644 plugins/chat/*html $(doctarget)/plugins/chat/





chpasswd_installdocimages_directory = $(subst /,_,$(wildcard plugins/chpasswd/images))

$(chpasswd_installdocimages_directory):	plugins/chpasswd/images/*
	install -d $(doctarget)/plugins/chpasswd/images/
	install -m 644 plugins/chpasswd/images/* $(doctarget)/plugins/chpasswd/images/

chpasswd_install_documentation	chpasswd_build_documentation:	plugins/chpasswd/*html	$(chpasswd_installdocimages_directory)
	install -d $(doctarget)/plugins/chpasswd/
	install -m 644 plugins/chpasswd/*html $(doctarget)/plugins/chpasswd/





fsck_installdocimages_directory = $(subst /,_,$(wildcard plugins/fsck/images))

$(fsck_installdocimages_directory):	plugins/fsck/images/*
	install -d $(doctarget)/plugins/fsck/images/
	install -m 644 plugins/fsck/images/* $(doctarget)/plugins/fsck/images/

fsck_install_documentation	fsck_build_documentation:	plugins/fsck/*html	$(fsck_installdocimages_directory)
	install -d $(doctarget)/plugins/fsck/
	install -m 644 plugins/fsck/*html $(doctarget)/plugins/fsck/





gparted_installdocimages_directory = $(subst /,_,$(wildcard plugins/gparted/images))

$(gparted_installdocimages_directory):	plugins/gparted/images/*
	install -d $(doctarget)/plugins/gparted/images/
	install -m 644 plugins/gparted/images/* $(doctarget)/plugins/gparted/images/

gparted_install_documentation:	plugins/gparted/*html	$(gparted_installdocimages_directory)
	install -d $(doctarget)/plugins/gparted/
	install -m 644 plugins/gparted/*html $(doctarget)/plugins/gparted/





gpt-check-bios-grub_installdocimages_directory = $(subst /,_,$(wildcard plugins/gpt-check-bios-grub/images))

$(gpt-check-bios-grub_installdocimages_directory):	plugins/gpt-check-bios-grub/images/*
	install -d $(doctarget)/plugins/gpt-check-bios-grub/images/
	install -m 644 plugins/gpt-check-bios-grub/images/* $(doctarget)/plugins/gpt-check-bios-grub/images/

gpt-check-bios-grub_install_documentation	gpt-check-bios-grub_build_documentation:	plugins/gpt-check-bios-grub/*html	$(gpt-check-bios-grub_installdocimages_directory)
	install -d $(doctarget)/plugins/gpt-check-bios-grub/
	install -m 644 plugins/gpt-check-bios-grub/*html $(doctarget)/plugins/gpt-check-bios-grub/





gpt-create-hybrid-mbr_installdocimages_directory = $(subst /,_,$(wildcard plugins/gpt-create-hybrid-mbr/images))

$(gpt-create-hybrid-mbr_installdocimages_directory):	plugins/gpt-create-hybrid-mbr/images/*
	install -d $(doctarget)/plugins/gpt-create-hybrid-mbr/images/
	install -m 644 plugins/gpt-create-hybrid-mbr/images/* $(doctarget)/plugins/gpt-create-hybrid-mbr/images/

gpt-create-hybrid-mbr_install_documentation	gpt-create-hybrid-mbr_build_documentation:	plugins/gpt-create-hybrid-mbr/*html	$(gpt-create-hybrid-mbr_installdocimages_directory)
	install -d $(doctarget)/plugins/gpt-create-hybrid-mbr/
	install -m 644 plugins/gpt-create-hybrid-mbr/*html $(doctarget)/plugins/gpt-create-hybrid-mbr/





gpt-recompute-hybrid-mbr-chs_installdocimages_directory = $(subst /,_,$(wildcard plugins/gpt-recompute-hybrid-mbr-chs/images))

$(gpt-recompute-hybrid-mbr-chs_installdocimages_directory):	plugins/gpt-recompute-hybrid-mbr-chs/images/*
	install -d $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/images/
	install -m 644 plugins/gpt-recompute-hybrid-mbr-chs/images/* $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/images/

gpt-recompute-hybrid-mbr-chs_install_documentation	gpt-recompute-hybrid-mbr-chs_build_documentation:	plugins/gpt-recompute-hybrid-mbr-chs/*html	$(gpt-recompute-hybrid-mbr-chs_installdocimages_directory)
	install -d $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/
	install -m 644 plugins/gpt-recompute-hybrid-mbr-chs/*html $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/





grubeasy_installdocimages_directory = $(subst /,_,$(wildcard plugins/grubeasy/images))

$(grubeasy_installdocimages_directory):	plugins/grubeasy/images/*
	install -d $(doctarget)/plugins/grubeasy/images/
	install -m 644 plugins/grubeasy/images/* $(doctarget)/plugins/grubeasy/images/

grubeasy_install_documentation	grubeasy_build_documentation:	plugins/grubeasy/*html	$(grubeasy_installdocimages_directory)
	install -d $(doctarget)/plugins/grubeasy/
	install -m 644 plugins/grubeasy/*html $(doctarget)/plugins/grubeasy/





grub-install_installdocimages_directory = $(subst /,_,$(wildcard plugins/grub-install/images))

$(grub-install_installdocimages_directory):	plugins/grub-install/images/*
	install -d $(doctarget)/plugins/grub-install/images/
	install -m 644 plugins/grub-install/images/* $(doctarget)/plugins/grub-install/images/

grub-install_install_documentation	grub-install_build_documentation:	plugins/grub-install/*html	$(grub-install_installdocimages_directory)
	install -d $(doctarget)/plugins/grub-install/
	install -m 644 plugins/grub-install/*html $(doctarget)/plugins/grub-install/





help-rescapp_installdocimages_directory = $(subst /,_,$(wildcard plugins/help-rescapp/images))

$(help-rescapp_installdocimages_directory):	plugins/help-rescapp/images/*
	install -d $(doctarget)/plugins/help-rescapp/images/
	install -m 644 plugins/help-rescapp/images/* $(doctarget)/plugins/help-rescapp/images/

help-rescapp_install_documentation	help-rescapp_build_documentation:	plugins/help-rescapp/*html	$(help-rescapp_installdocimages_directory)
	install -d $(doctarget)/plugins/help-rescapp/
	install -m 644 plugins/help-rescapp/*html $(doctarget)/plugins/help-rescapp/


not-documented_installdocimages_directory = $(subst /,_,$(wildcard plugins/not-documented/images))

$(not-documented_installdocimages_directory):	plugins/not-documented/images/*
	install -d $(doctarget)/plugins/not-documented/images/
	install -m 644 plugins/not-documented/images/* $(doctarget)/plugins/not-documented/images/

not-documented_install_documentation	not-documented_build_documentation:	plugins/not-documented/*html	$(not-documented_installdocimages_directory)
	install -d $(doctarget)/plugins/not-documented/
	install -m 644 plugins/not-documented/*html $(doctarget)/plugins/not-documented/

inxi_install_documentation	inxi_build_documentation:	plugins/inxi/*html
	install -d $(doctarget)/plugins/inxi/
	install -m 644 plugins/inxi/*html $(doctarget)/plugins/inxi/


photorec_installdocimages_directory = $(subst /,_,$(wildcard plugins/photorec/images))

$(photorec_installdocimages_directory):	plugins/photorec/images/*
	install -d $(doctarget)/plugins/photorec/images/
	install -m 644 plugins/photorec/images/* $(doctarget)/plugins/photorec/images/

photorec_install_documentation:	plugins/photorec/*html	$(photorec_installdocimages_directory)
	install -d $(doctarget)/plugins/photorec/
	install -m 644 plugins/photorec/*html $(doctarget)/plugins/photorec/





share_log_installdocimages_directory = $(subst /,_,$(wildcard plugins/share_log/images))

$(share_log_installdocimages_directory):	plugins/share_log/images/*
	install -d $(doctarget)/plugins/share_log/images/
	install -m 644 plugins/share_log/images/* $(doctarget)/plugins/share_log/images/

share_log_install_documentation	share_log_build_documentation:	plugins/share_log/*html	$(share_log_installdocimages_directory)
	install -d $(doctarget)/plugins/share_log/
	install -m 644 plugins/share_log/*html $(doctarget)/plugins/share_log/





share_log_forum_installdocimages_directory = $(subst /,_,$(wildcard plugins/share_log_forum/images))

$(share_log_forum_installdocimages_directory):	plugins/share_log_forum/images/*
	install -d $(doctarget)/plugins/share_log_forum/images/
	install -m 644 plugins/share_log_forum/images/* $(doctarget)/plugins/share_log_forum/images/

share_log_forum_install_documentation	share_log_forum_build_documentation:	plugins/share_log_forum/*html	$(share_log_forum_installdocimages_directory)
	install -d $(doctarget)/plugins/share_log_forum/
	install -m 644 plugins/share_log_forum/*html $(doctarget)/plugins/share_log_forum/





show_log_installdocimages_directory = $(subst /,_,$(wildcard plugins/show_log/images))

$(show_log_installdocimages_directory):	plugins/show_log/images/*
	install -d $(doctarget)/plugins/show_log/images/
	install -m 644 plugins/show_log/images/* $(doctarget)/plugins/show_log/images/

show_log_install_documentation	show_log_build_documentation:	plugins/show_log/*html	$(show_log_installdocimages_directory)
	install -d $(doctarget)/plugins/show_log/
	install -m 644 plugins/show_log/*html $(doctarget)/plugins/show_log/





sudoers_installdocimages_directory = $(subst /,_,$(wildcard plugins/sudoers/images))

$(sudoers_installdocimages_directory):	plugins/sudoers/images/*
	install -d $(doctarget)/plugins/sudoers/images/
	install -m 644 plugins/sudoers/images/* $(doctarget)/plugins/sudoers/images/

sudoers_install_documentation	sudoers_build_documentation:	plugins/sudoers/*html	$(sudoers_installdocimages_directory)
	install -d $(doctarget)/plugins/sudoers/
	install -m 644 plugins/sudoers/*html $(doctarget)/plugins/sudoers/





testdisk_installdocimages_directory = $(subst /,_,$(wildcard plugins/testdisk/images))

$(testdisk_installdocimages_directory):	plugins/testdisk/images/*
	install -d $(doctarget)/plugins/testdisk/images/
	install -m 644 plugins/testdisk/images/* $(doctarget)/plugins/testdisk/images/

testdisk_install_documentation:	plugins/testdisk/*html	$(testdisk_installdocimages_directory)
	install -d $(doctarget)/plugins/testdisk/
	install -m 644 plugins/testdisk/*html $(doctarget)/plugins/testdisk/





ueficheck_installdocimages_directory = $(subst /,_,$(wildcard plugins/ueficheck/images))

$(ueficheck_installdocimages_directory):	plugins/ueficheck/images/*
	install -d $(doctarget)/plugins/ueficheck/images/
	install -m 644 plugins/ueficheck/images/* $(doctarget)/plugins/ueficheck/images/

ueficheck_install_documentation	ueficheck_build_documentation:	plugins/ueficheck/*html	$(ueficheck_installdocimages_directory)
	install -d $(doctarget)/plugins/ueficheck/
	install -m 644 plugins/ueficheck/*html $(doctarget)/plugins/ueficheck/





ueficreate_installdocimages_directory = $(subst /,_,$(wildcard plugins/ueficreate/images))

$(ueficreate_installdocimages_directory):	plugins/ueficreate/images/*
	install -d $(doctarget)/plugins/ueficreate/images/
	install -m 644 plugins/ueficreate/images/* $(doctarget)/plugins/ueficreate/images/

ueficreate_install_documentation	ueficreate_build_documentation:	plugins/ueficreate/*html	$(ueficreate_installdocimages_directory)
	install -d $(doctarget)/plugins/ueficreate/
	install -m 644 plugins/ueficreate/*html $(doctarget)/plugins/ueficreate/





uefifakemicrosoft_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefifakemicrosoft/images))

$(uefifakemicrosoft_installdocimages_directory):	plugins/uefifakemicrosoft/images/*
	install -d $(doctarget)/plugins/uefifakemicrosoft/images/
	install -m 644 plugins/uefifakemicrosoft/images/* $(doctarget)/plugins/uefifakemicrosoft/images/

uefifakemicrosoft_install_documentation	uefifakemicrosoft_build_documentation:	plugins/uefifakemicrosoft/*html	$(uefifakemicrosoft_installdocimages_directory)
	install -d $(doctarget)/plugins/uefifakemicrosoft/
	install -m 644 plugins/uefifakemicrosoft/*html $(doctarget)/plugins/uefifakemicrosoft/





uefihidemicrosoft_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefihidemicrosoft/images))

$(uefihidemicrosoft_installdocimages_directory):	plugins/uefihidemicrosoft/images/*
	install -d $(doctarget)/plugins/uefihidemicrosoft/images/
	install -m 644 plugins/uefihidemicrosoft/images/* $(doctarget)/plugins/uefihidemicrosoft/images/

uefihidemicrosoft_install_documentation	uefihidemicrosoft_build_documentation:	plugins/uefihidemicrosoft/*html	$(uefihidemicrosoft_installdocimages_directory)
	install -d $(doctarget)/plugins/uefihidemicrosoft/
	install -m 644 plugins/uefihidemicrosoft/*html $(doctarget)/plugins/uefihidemicrosoft/





uefiorder_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefiorder/images))

$(uefiorder_installdocimages_directory):	plugins/uefiorder/images/*
	install -d $(doctarget)/plugins/uefiorder/images/
	install -m 644 plugins/uefiorder/images/* $(doctarget)/plugins/uefiorder/images/

uefiorder_install_documentation	uefiorder_build_documentation:	plugins/uefiorder/*html	$(uefiorder_installdocimages_directory)
	install -d $(doctarget)/plugins/uefiorder/
	install -m 644 plugins/uefiorder/*html $(doctarget)/plugins/uefiorder/





uefipartstatus_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefipartstatus/images))

$(uefipartstatus_installdocimages_directory):	plugins/uefipartstatus/images/*
	install -d $(doctarget)/plugins/uefipartstatus/images/
	install -m 644 plugins/uefipartstatus/images/* $(doctarget)/plugins/uefipartstatus/images/

uefipartstatus_install_documentation	uefipartstatus_build_documentation:	plugins/uefipartstatus/*html	$(uefipartstatus_installdocimages_directory)
	install -d $(doctarget)/plugins/uefipartstatus/
	install -m 644 plugins/uefipartstatus/*html $(doctarget)/plugins/uefipartstatus/





uefireinstallmicrosoft_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefireinstallmicrosoft/images))

$(uefireinstallmicrosoft_installdocimages_directory):	plugins/uefireinstallmicrosoft/images/*
	install -d $(doctarget)/plugins/uefireinstallmicrosoft/images/
	install -m 644 plugins/uefireinstallmicrosoft/images/* $(doctarget)/plugins/uefireinstallmicrosoft/images/

uefireinstallmicrosoft_install_documentation	uefireinstallmicrosoft_build_documentation:	plugins/uefireinstallmicrosoft/*html	$(uefireinstallmicrosoft_installdocimages_directory)
	install -d $(doctarget)/plugins/uefireinstallmicrosoft/
	install -m 644 plugins/uefireinstallmicrosoft/*html $(doctarget)/plugins/uefireinstallmicrosoft/





update-grub_installdocimages_directory = $(subst /,_,$(wildcard plugins/update-grub/images))

$(update-grub_installdocimages_directory):	plugins/update-grub/images/*
	install -d $(doctarget)/plugins/update-grub/images/
	install -m 644 plugins/update-grub/images/* $(doctarget)/plugins/update-grub/images/

update-grub_install_documentation	update-grub_build_documentation:	plugins/update-grub/*html	$(update-grub_installdocimages_directory)
	install -d $(doctarget)/plugins/update-grub/
	install -m 644 plugins/update-grub/*html $(doctarget)/plugins/update-grub/





web_installdocimages_directory = $(subst /,_,$(wildcard plugins/web/images))

$(web_installdocimages_directory):	plugins/web/images/*
	install -d $(doctarget)/plugins/web/images/
	install -m 644 plugins/web/images/* $(doctarget)/plugins/web/images/

web_install_documentation:	plugins/web/*html	$(web_installdocimages_directory)
	install -d $(doctarget)/plugins/web/
	install -m 644 plugins/web/*html $(doctarget)/plugins/web/





wineasy_installdocimages_directory = $(subst /,_,$(wildcard plugins/wineasy/images))

$(wineasy_installdocimages_directory):	plugins/wineasy/images/*
	install -d $(doctarget)/plugins/wineasy/images/
	install -m 644 plugins/wineasy/images/* $(doctarget)/plugins/wineasy/images/

wineasy_install_documentation	wineasy_build_documentation:	plugins/wineasy/*html	$(wineasy_installdocimages_directory)
	install -d $(doctarget)/plugins/wineasy/
	install -m 644 plugins/wineasy/*html $(doctarget)/plugins/wineasy/





winmbr_installdocimages_directory = $(subst /,_,$(wildcard plugins/winmbr/images))

$(winmbr_installdocimages_directory):	plugins/winmbr/images/*
	install -d $(doctarget)/plugins/winmbr/images/
	install -m 644 plugins/winmbr/images/* $(doctarget)/plugins/winmbr/images/

winmbr_install_documentation	winmbr_build_documentation:	plugins/winmbr/*html	$(winmbr_installdocimages_directory)
	install -d $(doctarget)/plugins/winmbr/
	install -m 644 plugins/winmbr/*html $(doctarget)/plugins/winmbr/





winpass_installdocimages_directory = $(subst /,_,$(wildcard plugins/winpass/images))

$(winpass_installdocimages_directory):	plugins/winpass/images/*
	install -d $(doctarget)/plugins/winpass/images/
	install -m 644 plugins/winpass/images/* $(doctarget)/plugins/winpass/images/

winpass_install_documentation	winpass_build_documentation:	plugins/winpass/*html	$(winpass_installdocimages_directory)
	install -d $(doctarget)/plugins/winpass/
	install -m 644 plugins/winpass/*html $(doctarget)/plugins/winpass/





winpromote_installdocimages_directory = $(subst /,_,$(wildcard plugins/winpromote/images))

$(winpromote_installdocimages_directory):	plugins/winpromote/images/*
	install -d $(doctarget)/plugins/winpromote/images/
	install -m 644 plugins/winpromote/images/* $(doctarget)/plugins/winpromote/images/

winpromote_install_documentation	winpromote_build_documentation:	plugins/winpromote/*html	$(winpromote_installdocimages_directory)
	install -d $(doctarget)/plugins/winpromote/
	install -m 644 plugins/winpromote/*html $(doctarget)/plugins/winpromote/





winunlock_installdocimages_directory = $(subst /,_,$(wildcard plugins/winunlock/images))

$(winunlock_installdocimages_directory):	plugins/winunlock/images/*
	install -d $(doctarget)/plugins/winunlock/images/
	install -m 644 plugins/winunlock/images/* $(doctarget)/plugins/winunlock/images/

winunlock_install_documentation	winunlock_build_documentation:	plugins/winunlock/*html	$(winunlock_installdocimages_directory)
	install -d $(doctarget)/plugins/winunlock/
	install -m 644 plugins/winunlock/*html $(doctarget)/plugins/winunlock/



install_icons:	icons/*png
	install -d $(icontarget)/
	install -m 644 icons/*png $(icontarget)/

install_desktopicons:	desktop-icons/rescapp-16.png desktop-icons/rescapp-22.png desktop-icons/rescapp-24.png desktop-icons/rescapp-32.png desktop-icons/rescapp-48.png desktop-icons/rescapp-256.png desktop-icons/rescapp-512.png desktop-icons/rescapp.svg
	install -d $(desktopiconstarget)/16x16/apps/
	install -m 644 desktop-icons/rescapp-16.png $(desktopiconstarget)/16x16/apps/rescapp.png
	install -d $(desktopiconstarget)/22x22/apps/
	install -m 644 desktop-icons/rescapp-22.png $(desktopiconstarget)/22x22/apps/rescapp.png
	install -d $(desktopiconstarget)/24x24/apps/
	install -m 644 desktop-icons/rescapp-24.png $(desktopiconstarget)/24x24/apps/rescapp.png
	install -d $(desktopiconstarget)/32x32/apps/
	install -m 644 desktop-icons/rescapp-32.png $(desktopiconstarget)/32x32/apps/rescapp.png
	install -d $(desktopiconstarget)/48x48/apps/
	install -m 644 desktop-icons/rescapp-48.png $(desktopiconstarget)/48x48/apps/rescapp.png
	install -d $(desktopiconstarget)/256x256/apps/
	install -m 644 desktop-icons/rescapp-256.png $(desktopiconstarget)/256x256/apps/rescapp.png
	install -d $(desktopiconstarget)/512x512/apps/
	install -m 644 desktop-icons/rescapp-512.png $(desktopiconstarget)/512x512/apps/rescapp.png
	install -d $(desktopiconstarget)/scalable/apps/
	install -m 644 desktop-icons/rescapp.svg $(desktopiconstarget)/scalable/apps/

install_applications:	applications/*desktop
	install -d $(applicationtarget)/
	install -m 644 applications/*desktop $(applicationtarget)/

install_binaries:	bin/*
	install -d $(bintarget)/
	install -m 755 bin/* $(bintarget)/

install_helpers:	helpers/*
	install -d $(helpertarget)/
	install -m 755 helpers/* $(helpertarget)/

install_images:	images/*png images/*svg
	install -d $(imagetarget)/
	install -m 644 images/*png images/*svg $(imagetarget)/

install_libraries:	lib/*sh lib/*py
	install -d $(librarytarget)/
	install -m 644 lib/*sh lib/*py $(librarytarget)/


install_menus:	install_menus_basedir\
	install_menus_about\
	install_menus_boot\
	install_menus_expert-tools\
	install_menus_fs\
	install_menus_gpt\
	install_menus_grub\
	install_menus_main-menu\
	install_menus_pass\
	install_menus_support\
	install_menus_win

install_menus_basedir:	menus/*lis
	install -d $(menutarget)/
	install -m 644 menus/*lis $(menutarget)/

install_menus_about:	menus/about/description menus/about/name
	install -d $(menutarget)/about
	install -m 644 menus/about/description $(menutarget)/about/
	install -m 644 menus/about/name $(menutarget)/about/

install_menus_boot:	menus/boot/description menus/boot/name
	install -d $(menutarget)/boot
	install -m 644 menus/boot/description $(menutarget)/boot/
	install -m 644 menus/boot/name $(menutarget)/boot/

install_menus_expert-tools:	menus/expert-tools/description menus/expert-tools/name
	install -d $(menutarget)/expert-tools
	install -m 644 menus/expert-tools/description $(menutarget)/expert-tools/
	install -m 644 menus/expert-tools/name $(menutarget)/expert-tools/

install_menus_fs:	menus/fs/description menus/fs/name
	install -d $(menutarget)/fs
	install -m 644 menus/fs/description $(menutarget)/fs/
	install -m 644 menus/fs/name $(menutarget)/fs/

install_menus_gpt:	menus/gpt/description menus/gpt/name
	install -d $(menutarget)/gpt
	install -m 644 menus/gpt/description $(menutarget)/gpt/
	install -m 644 menus/gpt/name $(menutarget)/gpt/

install_menus_grub:	menus/grub/description menus/grub/name
	install -d $(menutarget)/grub
	install -m 644 menus/grub/description $(menutarget)/grub/
	install -m 644 menus/grub/name $(menutarget)/grub/

install_menus_main-menu:	menus/main-menu/description menus/main-menu/name
	install -d $(menutarget)/main-menu
	install -m 644 menus/main-menu/description $(menutarget)/main-menu/
	install -m 644 menus/main-menu/name $(menutarget)/main-menu/

install_menus_pass:	menus/pass/description menus/pass/name
	install -d $(menutarget)/pass
	install -m 644 menus/pass/description $(menutarget)/pass/
	install -m 644 menus/pass/name $(menutarget)/pass/

install_menus_support:	menus/support/description menus/support/name
	install -d $(menutarget)/support
	install -m 644 menus/support/description $(menutarget)/support/
	install -m 644 menus/support/name $(menutarget)/support/

install_menus_win:	menus/win/description menus/win/name
	install -d $(menutarget)/win
	install -m 644 menus/win/description $(menutarget)/win/
	install -m 644 menus/win/name $(menutarget)/win/

install_plugins:	about-rescapp_install_plugin\
	bootinfoscript_install_plugin\
	chat_install_plugin\
	chpasswd_install_plugin\
	fsck_install_plugin\
	gparted_install_plugin\
	gpt-check-bios-grub_install_plugin\
	gpt-create-hybrid-mbr_install_plugin\
	gpt-recompute-hybrid-mbr-chs_install_plugin\
	grubeasy_install_plugin\
	grub-install_install_plugin\
	help-rescapp_install_plugin\
	inxi_install_plugin\
	photorec_install_plugin\
	share_log_install_plugin\
	share_log_forum_install_plugin\
	show_log_install_plugin\
	sudoers_install_plugin\
	testdisk_install_plugin\
	ueficheck_install_plugin\
	ueficreate_install_plugin\
	uefifakemicrosoft_install_plugin\
	uefihidemicrosoft_install_plugin\
	uefiorder_install_plugin\
	uefipartstatus_install_plugin\
	uefireinstallmicrosoft_install_plugin\
	update-grub_install_plugin\
	web_install_plugin\
	wineasy_install_plugin\
	winmbr_install_plugin\
	winpass_install_plugin\
	winpromote_install_plugin\
	winunlock_install_plugin\

about-rescapp_install_plugin:	plugins/about-rescapp/description\
	plugins/about-rescapp/name
	install -d $(plugintarget)/about-rescapp/
	install -m 644 plugins/about-rescapp/description $(plugintarget)/about-rescapp/
	install -m 644 plugins/about-rescapp/name $(plugintarget)/about-rescapp/




bootinfoscript_install_plugin:	plugins/bootinfoscript/description\
	plugins/bootinfoscript/name\
	plugins/bootinfoscript/run\
	plugins/bootinfoscript/sudo
	install -d $(plugintarget)/bootinfoscript/
	install -m 644 plugins/bootinfoscript/description $(plugintarget)/bootinfoscript/
	install -m 644 plugins/bootinfoscript/name $(plugintarget)/bootinfoscript/
	install -m 755 plugins/bootinfoscript/run $(plugintarget)/bootinfoscript/
	install -m 644 plugins/bootinfoscript/sudo $(plugintarget)/bootinfoscript/




chat_install_plugin:	plugins/chat/description\
	plugins/chat/name\
	plugins/chat/run
	install -d $(plugintarget)/chat/
	install -m 644 plugins/chat/description $(plugintarget)/chat/
	install -m 644 plugins/chat/name $(plugintarget)/chat/
	install -m 755 plugins/chat/run $(plugintarget)/chat/




chpasswd_install_plugin:	plugins/chpasswd/description\
	plugins/chpasswd/name\
	plugins/chpasswd/run\
	plugins/chpasswd/sudo
	install -d $(plugintarget)/chpasswd/
	install -m 644 plugins/chpasswd/description $(plugintarget)/chpasswd/
	install -m 644 plugins/chpasswd/name $(plugintarget)/chpasswd/
	install -m 755 plugins/chpasswd/run $(plugintarget)/chpasswd/
	install -m 644 plugins/chpasswd/sudo $(plugintarget)/chpasswd/




fsck_install_plugin:	plugins/fsck/description\
	plugins/fsck/name\
	plugins/fsck/run\
	plugins/fsck/sudo
	install -d $(plugintarget)/fsck/
	install -m 644 plugins/fsck/description $(plugintarget)/fsck/
	install -m 644 plugins/fsck/name $(plugintarget)/fsck/
	install -m 755 plugins/fsck/run $(plugintarget)/fsck/
	install -m 644 plugins/fsck/sudo $(plugintarget)/fsck/




gparted_install_plugin:	plugins/gparted/description\
	plugins/gparted/name\
	plugins/gparted/run\
	plugins/gparted/sudo
	install -d $(plugintarget)/gparted/
	install -m 644 plugins/gparted/description $(plugintarget)/gparted/
	install -m 644 plugins/gparted/name $(plugintarget)/gparted/
	install -m 755 plugins/gparted/run $(plugintarget)/gparted/
	install -m 644 plugins/gparted/sudo $(plugintarget)/gparted/




gpt-check-bios-grub_install_plugin:	plugins/gpt-check-bios-grub/description\
	plugins/gpt-check-bios-grub/name\
	plugins/gpt-check-bios-grub/run\
	plugins/gpt-check-bios-grub/sudo
	install -d $(plugintarget)/gpt-check-bios-grub/
	install -m 644 plugins/gpt-check-bios-grub/description $(plugintarget)/gpt-check-bios-grub/
	install -m 644 plugins/gpt-check-bios-grub/name $(plugintarget)/gpt-check-bios-grub/
	install -m 755 plugins/gpt-check-bios-grub/run $(plugintarget)/gpt-check-bios-grub/
	install -m 644 plugins/gpt-check-bios-grub/sudo $(plugintarget)/gpt-check-bios-grub/




gpt-create-hybrid-mbr_install_plugin:	plugins/gpt-create-hybrid-mbr/description\
	plugins/gpt-create-hybrid-mbr/name\
	plugins/gpt-create-hybrid-mbr/run\
	plugins/gpt-create-hybrid-mbr/sudo
	install -d $(plugintarget)/gpt-create-hybrid-mbr/
	install -m 644 plugins/gpt-create-hybrid-mbr/description $(plugintarget)/gpt-create-hybrid-mbr/
	install -m 644 plugins/gpt-create-hybrid-mbr/name $(plugintarget)/gpt-create-hybrid-mbr/
	install -m 755 plugins/gpt-create-hybrid-mbr/run $(plugintarget)/gpt-create-hybrid-mbr/
	install -m 644 plugins/gpt-create-hybrid-mbr/sudo $(plugintarget)/gpt-create-hybrid-mbr/




gpt-recompute-hybrid-mbr-chs_install_plugin:	plugins/gpt-recompute-hybrid-mbr-chs/description\
	plugins/gpt-recompute-hybrid-mbr-chs/name\
	plugins/gpt-recompute-hybrid-mbr-chs/run\
	plugins/gpt-recompute-hybrid-mbr-chs/sudo
	install -d $(plugintarget)/gpt-recompute-hybrid-mbr-chs/
	install -m 644 plugins/gpt-recompute-hybrid-mbr-chs/description $(plugintarget)/gpt-recompute-hybrid-mbr-chs/
	install -m 644 plugins/gpt-recompute-hybrid-mbr-chs/name $(plugintarget)/gpt-recompute-hybrid-mbr-chs/
	install -m 755 plugins/gpt-recompute-hybrid-mbr-chs/run $(plugintarget)/gpt-recompute-hybrid-mbr-chs/
	install -m 644 plugins/gpt-recompute-hybrid-mbr-chs/sudo $(plugintarget)/gpt-recompute-hybrid-mbr-chs/




grubeasy_install_plugin:	plugins/grubeasy/description\
	plugins/grubeasy/name\
	plugins/grubeasy/run\
	plugins/grubeasy/sudo
	install -d $(plugintarget)/grubeasy/
	install -m 644 plugins/grubeasy/description $(plugintarget)/grubeasy/
	install -m 644 plugins/grubeasy/name $(plugintarget)/grubeasy/
	install -m 755 plugins/grubeasy/run $(plugintarget)/grubeasy/
	install -m 644 plugins/grubeasy/sudo $(plugintarget)/grubeasy/




grub-install_install_plugin:	plugins/grub-install/description\
	plugins/grub-install/name\
	plugins/grub-install/run\
	plugins/grub-install/sudo
	install -d $(plugintarget)/grub-install/
	install -m 644 plugins/grub-install/description $(plugintarget)/grub-install/
	install -m 644 plugins/grub-install/name $(plugintarget)/grub-install/
	install -m 755 plugins/grub-install/run $(plugintarget)/grub-install/
	install -m 644 plugins/grub-install/sudo $(plugintarget)/grub-install/




help-rescapp_install_plugin:	plugins/help-rescapp/description\
	plugins/help-rescapp/name
	install -d $(plugintarget)/help-rescapp/
	install -m 644 plugins/help-rescapp/description $(plugintarget)/help-rescapp/
	install -m 644 plugins/help-rescapp/name $(plugintarget)/help-rescapp/




inxi_install_plugin:	plugins/inxi/description\
	plugins/inxi/name\
	plugins/inxi/run\
	plugins/inxi/sudo
	install -d $(plugintarget)/inxi/
	install -m 644 plugins/inxi/description $(plugintarget)/inxi/
	install -m 644 plugins/inxi/name $(plugintarget)/inxi/
	install -m 755 plugins/inxi/run $(plugintarget)/inxi/
	install -m 644 plugins/inxi/sudo $(plugintarget)/inxi/



photorec_install_plugin:	plugins/photorec/description\
	plugins/photorec/name\
	plugins/photorec/run\
	plugins/photorec/sudo
	install -d $(plugintarget)/photorec/
	install -m 644 plugins/photorec/description $(plugintarget)/photorec/
	install -m 644 plugins/photorec/name $(plugintarget)/photorec/
	install -m 755 plugins/photorec/run $(plugintarget)/photorec/
	install -m 644 plugins/photorec/sudo $(plugintarget)/photorec/




share_log_install_plugin:	plugins/share_log/description\
	plugins/share_log/name\
	plugins/share_log/run
	install -d $(plugintarget)/share_log/
	install -m 644 plugins/share_log/description $(plugintarget)/share_log/
	install -m 644 plugins/share_log/name $(plugintarget)/share_log/
	install -m 755 plugins/share_log/run $(plugintarget)/share_log/




share_log_forum_install_plugin:	plugins/share_log_forum/description\
	plugins/share_log_forum/name\
	plugins/share_log_forum/run
	install -d $(plugintarget)/share_log_forum/
	install -m 644 plugins/share_log_forum/description $(plugintarget)/share_log_forum/
	install -m 644 plugins/share_log_forum/name $(plugintarget)/share_log_forum/
	install -m 755 plugins/share_log_forum/run $(plugintarget)/share_log_forum/




show_log_install_plugin:	plugins/show_log/description\
	plugins/show_log/name\
	plugins/show_log/run
	install -d $(plugintarget)/show_log/
	install -m 644 plugins/show_log/description $(plugintarget)/show_log/
	install -m 644 plugins/show_log/name $(plugintarget)/show_log/
	install -m 755 plugins/show_log/run $(plugintarget)/show_log/




sudoers_install_plugin:	plugins/sudoers/description\
	plugins/sudoers/name\
	plugins/sudoers/run\
	plugins/sudoers/sudo\
	plugins/sudoers/sudoers_template
	install -d $(plugintarget)/sudoers/
	install -m 644 plugins/sudoers/description $(plugintarget)/sudoers/
	install -m 644 plugins/sudoers/name $(plugintarget)/sudoers/
	install -m 755 plugins/sudoers/run $(plugintarget)/sudoers/
	install -m 644 plugins/sudoers/sudo $(plugintarget)/sudoers/
	install -m 644 plugins/sudoers/sudoers_template $(plugintarget)/sudoers/




testdisk_install_plugin:	plugins/testdisk/description\
	plugins/testdisk/name\
	plugins/testdisk/run\
	plugins/testdisk/sudo
	install -d $(plugintarget)/testdisk/
	install -m 644 plugins/testdisk/description $(plugintarget)/testdisk/
	install -m 644 plugins/testdisk/name $(plugintarget)/testdisk/
	install -m 755 plugins/testdisk/run $(plugintarget)/testdisk/
	install -m 644 plugins/testdisk/sudo $(plugintarget)/testdisk/




ueficheck_install_plugin:	plugins/ueficheck/description\
	plugins/ueficheck/name\
	plugins/ueficheck/run\
	plugins/ueficheck/sudo
	install -d $(plugintarget)/ueficheck/
	install -m 644 plugins/ueficheck/description $(plugintarget)/ueficheck/
	install -m 644 plugins/ueficheck/name $(plugintarget)/ueficheck/
	install -m 755 plugins/ueficheck/run $(plugintarget)/ueficheck/
	install -m 644 plugins/ueficheck/sudo $(plugintarget)/ueficheck/




ueficreate_install_plugin:	plugins/ueficreate/description\
	plugins/ueficreate/name\
	plugins/ueficreate/run\
	plugins/ueficreate/sudo
	install -d $(plugintarget)/ueficreate/
	install -m 644 plugins/ueficreate/description $(plugintarget)/ueficreate/
	install -m 644 plugins/ueficreate/name $(plugintarget)/ueficreate/
	install -m 755 plugins/ueficreate/run $(plugintarget)/ueficreate/
	install -m 644 plugins/ueficreate/sudo $(plugintarget)/ueficreate/




uefifakemicrosoft_install_plugin:	plugins/uefifakemicrosoft/description\
	plugins/uefifakemicrosoft/name\
	plugins/uefifakemicrosoft/run\
	plugins/uefifakemicrosoft/sudo
	install -d $(plugintarget)/uefifakemicrosoft/
	install -m 644 plugins/uefifakemicrosoft/description $(plugintarget)/uefifakemicrosoft/
	install -m 644 plugins/uefifakemicrosoft/name $(plugintarget)/uefifakemicrosoft/
	install -m 755 plugins/uefifakemicrosoft/run $(plugintarget)/uefifakemicrosoft/
	install -m 644 plugins/uefifakemicrosoft/sudo $(plugintarget)/uefifakemicrosoft/




uefihidemicrosoft_install_plugin:	plugins/uefihidemicrosoft/description\
	plugins/uefihidemicrosoft/name\
	plugins/uefihidemicrosoft/run\
	plugins/uefihidemicrosoft/sudo
	install -d $(plugintarget)/uefihidemicrosoft/
	install -m 644 plugins/uefihidemicrosoft/description $(plugintarget)/uefihidemicrosoft/
	install -m 644 plugins/uefihidemicrosoft/name $(plugintarget)/uefihidemicrosoft/
	install -m 755 plugins/uefihidemicrosoft/run $(plugintarget)/uefihidemicrosoft/
	install -m 644 plugins/uefihidemicrosoft/sudo $(plugintarget)/uefihidemicrosoft/




uefiorder_install_plugin:	plugins/uefiorder/description\
	plugins/uefiorder/name\
	plugins/uefiorder/run\
	plugins/uefiorder/sudo
	install -d $(plugintarget)/uefiorder/
	install -m 644 plugins/uefiorder/description $(plugintarget)/uefiorder/
	install -m 644 plugins/uefiorder/name $(plugintarget)/uefiorder/
	install -m 755 plugins/uefiorder/run $(plugintarget)/uefiorder/
	install -m 644 plugins/uefiorder/sudo $(plugintarget)/uefiorder/




uefipartstatus_install_plugin:	plugins/uefipartstatus/description\
	plugins/uefipartstatus/name\
	plugins/uefipartstatus/run\
	plugins/uefipartstatus/sudo
	install -d $(plugintarget)/uefipartstatus/
	install -m 644 plugins/uefipartstatus/description $(plugintarget)/uefipartstatus/
	install -m 644 plugins/uefipartstatus/name $(plugintarget)/uefipartstatus/
	install -m 755 plugins/uefipartstatus/run $(plugintarget)/uefipartstatus/
	install -m 644 plugins/uefipartstatus/sudo $(plugintarget)/uefipartstatus/




uefireinstallmicrosoft_install_plugin:	plugins/uefireinstallmicrosoft/description\
	plugins/uefireinstallmicrosoft/name\
	plugins/uefireinstallmicrosoft/run\
	plugins/uefireinstallmicrosoft/sudo
	install -d $(plugintarget)/uefireinstallmicrosoft/
	install -m 644 plugins/uefireinstallmicrosoft/description $(plugintarget)/uefireinstallmicrosoft/
	install -m 644 plugins/uefireinstallmicrosoft/name $(plugintarget)/uefireinstallmicrosoft/
	install -m 755 plugins/uefireinstallmicrosoft/run $(plugintarget)/uefireinstallmicrosoft/
	install -m 644 plugins/uefireinstallmicrosoft/sudo $(plugintarget)/uefireinstallmicrosoft/




update-grub_install_plugin:	plugins/update-grub/description\
	plugins/update-grub/name\
	plugins/update-grub/run\
	plugins/update-grub/sudo
	install -d $(plugintarget)/update-grub/
	install -m 644 plugins/update-grub/description $(plugintarget)/update-grub/
	install -m 644 plugins/update-grub/name $(plugintarget)/update-grub/
	install -m 755 plugins/update-grub/run $(plugintarget)/update-grub/
	install -m 644 plugins/update-grub/sudo $(plugintarget)/update-grub/




web_install_plugin:	plugins/web/description\
	plugins/web/name\
	plugins/web/run
	install -d $(plugintarget)/web/
	install -m 644 plugins/web/description $(plugintarget)/web/
	install -m 644 plugins/web/name $(plugintarget)/web/
	install -m 755 plugins/web/run $(plugintarget)/web/




wineasy_install_plugin:	plugins/wineasy/description\
	plugins/wineasy/name\
	plugins/wineasy/run\
	plugins/wineasy/sudo
	install -d $(plugintarget)/wineasy/
	install -m 644 plugins/wineasy/description $(plugintarget)/wineasy/
	install -m 644 plugins/wineasy/name $(plugintarget)/wineasy/
	install -m 755 plugins/wineasy/run $(plugintarget)/wineasy/
	install -m 644 plugins/wineasy/sudo $(plugintarget)/wineasy/




winmbr_install_plugin:	plugins/winmbr/description\
	plugins/winmbr/name\
	plugins/winmbr/run\
	plugins/winmbr/sudo
	install -d $(plugintarget)/winmbr/
	install -m 644 plugins/winmbr/description $(plugintarget)/winmbr/
	install -m 644 plugins/winmbr/name $(plugintarget)/winmbr/
	install -m 755 plugins/winmbr/run $(plugintarget)/winmbr/
	install -m 644 plugins/winmbr/sudo $(plugintarget)/winmbr/




winpass_install_plugin:	plugins/winpass/description\
	plugins/winpass/name\
	plugins/winpass/run\
	plugins/winpass/sudo
	install -d $(plugintarget)/winpass/
	install -m 644 plugins/winpass/description $(plugintarget)/winpass/
	install -m 644 plugins/winpass/name $(plugintarget)/winpass/
	install -m 755 plugins/winpass/run $(plugintarget)/winpass/
	install -m 644 plugins/winpass/sudo $(plugintarget)/winpass/




winpromote_install_plugin:	plugins/winpromote/description\
	plugins/winpromote/name\
	plugins/winpromote/run\
	plugins/winpromote/sudo
	install -d $(plugintarget)/winpromote/
	install -m 644 plugins/winpromote/description $(plugintarget)/winpromote/
	install -m 644 plugins/winpromote/name $(plugintarget)/winpromote/
	install -m 755 plugins/winpromote/run $(plugintarget)/winpromote/
	install -m 644 plugins/winpromote/sudo $(plugintarget)/winpromote/




winunlock_install_plugin:	plugins/winunlock/description\
	plugins/winunlock/name\
	plugins/winunlock/run\
	plugins/winunlock/sudo
	install -d $(plugintarget)/winunlock/
	install -m 644 plugins/winunlock/description $(plugintarget)/winunlock/
	install -m 644 plugins/winunlock/name $(plugintarget)/winunlock/
	install -m 755 plugins/winunlock/run $(plugintarget)/winunlock/
	install -m 644 plugins/winunlock/sudo $(plugintarget)/winunlock/

install_version:	VERSION
	install -d $(versiontarget)
	install -m 644 VERSION $(versiontarget)

install_dbussystemconf:	system/dbus/conf/org.rescapp.MessageService.conf
	install -d $(dbussystemconftarget)
	install -m 644 system/dbus/conf/org.rescapp.MessageService.conf $(dbussystemconftarget)

about-rescapp_build_documentation:	plugins/about-rescapp/doc.html

plugins/about-rescapp/doc.html:	plugins/about-rescapp/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh about-rescapp

share_log_build_documentation:	plugins/share_log/doc.html

plugins/share_log/doc.html:	plugins/share_log/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh share_log

inxi_build_documentation:	plugins/inxi/doc.html

plugins/inxi/doc.html:	plugins/inxi/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh inxi

help-rescapp_build_documentation:	plugins/help-rescapp/doc.html

plugins/help-rescapp/doc.html:	plugins/help-rescapp/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh help-rescapp

winmbr_build_documentation:	plugins/winmbr/doc.html

plugins/winmbr/doc.html:	plugins/winmbr/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh winmbr

sudoers_build_documentation:	plugins/sudoers/doc.html

plugins/sudoers/doc.html:	plugins/sudoers/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh sudoers

update-grub_build_documentation:	plugins/update-grub/doc.html

plugins/update-grub/doc.html:	plugins/update-grub/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh update-grub

gpt-create-hybrid-mbr_build_documentation:	plugins/gpt-create-hybrid-mbr/doc.html

plugins/gpt-create-hybrid-mbr/doc.html:	plugins/gpt-create-hybrid-mbr/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh gpt-create-hybrid-mbr

gpt-check-bios-grub_build_documentation:	plugins/gpt-check-bios-grub/doc.html

plugins/gpt-check-bios-grub/doc.html:	plugins/gpt-check-bios-grub/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh gpt-check-bios-grub

winunlock_build_documentation:	plugins/winunlock/doc.html

plugins/winunlock/doc.html:	plugins/winunlock/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh winunlock

winpromote_build_documentation:	plugins/winpromote/doc.html

plugins/winpromote/doc.html:	plugins/winpromote/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh winpromote

bootinfoscript_build_documentation:	plugins/bootinfoscript/doc.html

plugins/bootinfoscript/doc.html:	plugins/bootinfoscript/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh bootinfoscript

not-documented_build_documentation:	plugins/not-documented/doc.html

plugins/not-documented/doc.html:	plugins/not-documented/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh not-documented

gpt-recompute-hybrid-mbr-chs_build_documentation:	plugins/gpt-recompute-hybrid-mbr-chs/doc.html

plugins/gpt-recompute-hybrid-mbr-chs/doc.html:	plugins/gpt-recompute-hybrid-mbr-chs/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh gpt-recompute-hybrid-mbr-chs

share_log_forum_build_documentation:	plugins/share_log_forum/doc.html

plugins/share_log_forum/doc.html:	plugins/share_log_forum/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh share_log_forum

grub-install_build_documentation:	plugins/grub-install/doc.html

grubeasy_build_documentation:	plugins/grubeasy/doc.html

plugins/grub-install/doc.html:	plugins/grub-install/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh grub-install

plugins/grubeasy/doc.html:	plugins/grubeasy/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh grubeasy

winpass_build_documentation:	plugins/winpass/doc.html

plugins/winpass/doc.html:	plugins/winpass/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh winpass

chpasswd_build_documentation:	plugins/chpasswd/doc.html

plugins/chpasswd/doc.html:	plugins/chpasswd/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh chpasswd

show_log_build_documentation:	plugins/show_log/doc.html

plugins/show_log/doc.html:	plugins/show_log/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh show_log

chat_build_documentation:	plugins/chat/doc.html

plugins/chat/doc.html:	plugins/chat/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh chat

fsck_build_documentation:	plugins/fsck/doc.html

plugins/fsck/doc.html:	plugins/fsck/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh fsck

ueficheck_build_documentation:	plugins/ueficheck/doc.html

plugins/ueficheck/doc.html:	plugins/ueficheck/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh ueficheck

ueficreate_build_documentation:	plugins/ueficreate/doc.html

plugins/ueficreate/doc.html:	plugins/ueficreate/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh ueficreate


uefifakemicrosoft_build_documentation:	plugins/uefifakemicrosoft/doc.html

plugins/uefifakemicrosoft/doc.html:	plugins/uefifakemicrosoft/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh uefifakemicrosoft


uefihidemicrosoft_build_documentation:	plugins/uefihidemicrosoft/doc.html

plugins/uefihidemicrosoft/doc.html:	plugins/uefihidemicrosoft/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh uefihidemicrosoft


uefiorder_build_documentation:	plugins/uefiorder/doc.html

plugins/uefiorder/doc.html:	plugins/uefiorder/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh uefiorder

uefipartstatus_build_documentation:	plugins/uefipartstatus/doc.html

plugins/uefipartstatus/doc.html:	plugins/uefipartstatus/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh uefipartstatus

uefireinstallmicrosoft_build_documentation:	plugins/uefireinstallmicrosoft/doc.html

plugins/uefireinstallmicrosoft/doc.html:	plugins/uefireinstallmicrosoft/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh uefireinstallmicrosoft

wineasy_build_documentation:	plugins/wineasy/doc.html

plugins/wineasy/doc.html:	plugins/wineasy/local_doc.html	docscripts/build-local-doc.sh	VERSION	plugins/templates/local_header.html	plugins/templates/local_footer.html
	./docscripts/build-local-doc.sh wineasy
