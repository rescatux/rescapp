
prefix?=/usr/local
target=$(DESTDIR)$(prefix)
doctarget=$(target)/share/doc/rescapp
icontarget=$(target)/share/icons/rescapp
applicationtarget=$(target)/share/applications
bintarget=$(target)/bin
helpertarget=$(target)/bin

all:
.PHONY	:	all

#	boot-repair_install_documentation
#	gparted_install_documentation
#	grubeasy_install_documentation
#	os-uninstaller_install_documentation
#	photorec_install_documentation
#	testdisk_install_documentation
#	ueficheck_install_documentation
#	ueficreate_install_documentation
#	uefifakemicrosoft_install_documentation
#	uefihidemicrosoft_install_documentation
#	uefiorder_install_documentation
#	uefipartstatus_install_documentation
#	uefireinstallmicrosoft_install_documentation
#	web_install_documentation
#	wineasy_install_documentation
install_documentation:	about-rescapp_install_documentation\
	bootinfoscript_install_documentation\
	chat_install_documentation\
	chpasswd_install_documentation\
	fsck_install_documentation\
	gpt-check-bios-grub_install_documentation\
	gpt-create-hybrid-mbr_install_documentation\
	gpt-recompute-hybrid-mbr-chs_install_documentation\
	grub-install_install_documentation\
	help-rescapp_install_documentation\
	share_log_install_documentation\
	share_log_forum_install_documentation\
	show_log_install_documentation\
	sudoers_install_documentation\
	update-grub_install_documentation\
	winmbr_install_documentation\
	winpass_install_documentation\
	winpromote_install_documentation\
	winunlock_install_documentation


install:	install_documentation\
	install_icons\
	install_applications\
	install_binaries\
	install_helpers



about-rescapp_installdocimages_directory = $(subst /,_,$(wildcard plugins/about-rescapp/images))

$(about-rescapp_installdocimages_directory):	plugins/about-rescapp/images/*
	install -d $(doctarget)/plugins/about-rescapp/images/
	install -m 644 plugins/about-rescapp/images/* $(doctarget)/plugins/about-rescapp/images/

about-rescapp_install_documentation:	plugins/about-rescapp/*html	$(about-rescapp_installdocimages_directory)
	install -d $(doctarget)/plugins/about-rescapp/
	install -m 644 plugins/about-rescapp/*html $(doctarget)/plugins/about-rescapp/





bootinfoscript_installdocimages_directory = $(subst /,_,$(wildcard plugins/bootinfoscript/images))

$(bootinfoscript_installdocimages_directory):	plugins/bootinfoscript/images/*
	install -d $(doctarget)/plugins/bootinfoscript/images/
	install -m 644 plugins/bootinfoscript/images/* $(doctarget)/plugins/bootinfoscript/images/

bootinfoscript_install_documentation:	plugins/bootinfoscript/*html	$(bootinfoscript_installdocimages_directory)
	install -d $(doctarget)/plugins/bootinfoscript/
	install -m 644 plugins/bootinfoscript/*html $(doctarget)/plugins/bootinfoscript/





boot-repair_installdocimages_directory = $(subst /,_,$(wildcard plugins/boot-repair/images))

$(boot-repair_installdocimages_directory):	plugins/boot-repair/images/*
	install -d $(doctarget)/plugins/boot-repair/images/
	install -m 644 plugins/boot-repair/images/* $(doctarget)/plugins/boot-repair/images/

boot-repair_install_documentation:	plugins/boot-repair/*html	$(boot-repair_installdocimages_directory)
	install -d $(doctarget)/plugins/boot-repair/
	install -m 644 plugins/boot-repair/*html $(doctarget)/plugins/boot-repair/





chat_installdocimages_directory = $(subst /,_,$(wildcard plugins/chat/images))

$(chat_installdocimages_directory):	plugins/chat/images/*
	install -d $(doctarget)/plugins/chat/images/
	install -m 644 plugins/chat/images/* $(doctarget)/plugins/chat/images/

chat_install_documentation:	plugins/chat/*html	$(chat_installdocimages_directory)
	install -d $(doctarget)/plugins/chat/
	install -m 644 plugins/chat/*html $(doctarget)/plugins/chat/





chpasswd_installdocimages_directory = $(subst /,_,$(wildcard plugins/chpasswd/images))

$(chpasswd_installdocimages_directory):	plugins/chpasswd/images/*
	install -d $(doctarget)/plugins/chpasswd/images/
	install -m 644 plugins/chpasswd/images/* $(doctarget)/plugins/chpasswd/images/

chpasswd_install_documentation:	plugins/chpasswd/*html	$(chpasswd_installdocimages_directory)
	install -d $(doctarget)/plugins/chpasswd/
	install -m 644 plugins/chpasswd/*html $(doctarget)/plugins/chpasswd/





fsck_installdocimages_directory = $(subst /,_,$(wildcard plugins/fsck/images))

$(fsck_installdocimages_directory):	plugins/fsck/images/*
	install -d $(doctarget)/plugins/fsck/images/
	install -m 644 plugins/fsck/images/* $(doctarget)/plugins/fsck/images/

fsck_install_documentation:	plugins/fsck/*html	$(fsck_installdocimages_directory)
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

gpt-check-bios-grub_install_documentation:	plugins/gpt-check-bios-grub/*html	$(gpt-check-bios-grub_installdocimages_directory)
	install -d $(doctarget)/plugins/gpt-check-bios-grub/
	install -m 644 plugins/gpt-check-bios-grub/*html $(doctarget)/plugins/gpt-check-bios-grub/





gpt-create-hybrid-mbr_installdocimages_directory = $(subst /,_,$(wildcard plugins/gpt-create-hybrid-mbr/images))

$(gpt-create-hybrid-mbr_installdocimages_directory):	plugins/gpt-create-hybrid-mbr/images/*
	install -d $(doctarget)/plugins/gpt-create-hybrid-mbr/images/
	install -m 644 plugins/gpt-create-hybrid-mbr/images/* $(doctarget)/plugins/gpt-create-hybrid-mbr/images/

gpt-create-hybrid-mbr_install_documentation:	plugins/gpt-create-hybrid-mbr/*html	$(gpt-create-hybrid-mbr_installdocimages_directory)
	install -d $(doctarget)/plugins/gpt-create-hybrid-mbr/
	install -m 644 plugins/gpt-create-hybrid-mbr/*html $(doctarget)/plugins/gpt-create-hybrid-mbr/





gpt-recompute-hybrid-mbr-chs_installdocimages_directory = $(subst /,_,$(wildcard plugins/gpt-recompute-hybrid-mbr-chs/images))

$(gpt-recompute-hybrid-mbr-chs_installdocimages_directory):	plugins/gpt-recompute-hybrid-mbr-chs/images/*
	install -d $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/images/
	install -m 644 plugins/gpt-recompute-hybrid-mbr-chs/images/* $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/images/

gpt-recompute-hybrid-mbr-chs_install_documentation:	plugins/gpt-recompute-hybrid-mbr-chs/*html	$(gpt-recompute-hybrid-mbr-chs_installdocimages_directory)
	install -d $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/
	install -m 644 plugins/gpt-recompute-hybrid-mbr-chs/*html $(doctarget)/plugins/gpt-recompute-hybrid-mbr-chs/





grubeasy_installdocimages_directory = $(subst /,_,$(wildcard plugins/grubeasy/images))

$(grubeasy_installdocimages_directory):	plugins/grubeasy/images/*
	install -d $(doctarget)/plugins/grubeasy/images/
	install -m 644 plugins/grubeasy/images/* $(doctarget)/plugins/grubeasy/images/

grubeasy_install_documentation:	plugins/grubeasy/*html	$(grubeasy_installdocimages_directory)
	install -d $(doctarget)/plugins/grubeasy/
	install -m 644 plugins/grubeasy/*html $(doctarget)/plugins/grubeasy/





grub-install_installdocimages_directory = $(subst /,_,$(wildcard plugins/grub-install/images))

$(grub-install_installdocimages_directory):	plugins/grub-install/images/*
	install -d $(doctarget)/plugins/grub-install/images/
	install -m 644 plugins/grub-install/images/* $(doctarget)/plugins/grub-install/images/

grub-install_install_documentation:	plugins/grub-install/*html	$(grub-install_installdocimages_directory)
	install -d $(doctarget)/plugins/grub-install/
	install -m 644 plugins/grub-install/*html $(doctarget)/plugins/grub-install/





help-rescapp_installdocimages_directory = $(subst /,_,$(wildcard plugins/help-rescapp/images))

$(help-rescapp_installdocimages_directory):	plugins/help-rescapp/images/*
	install -d $(doctarget)/plugins/help-rescapp/images/
	install -m 644 plugins/help-rescapp/images/* $(doctarget)/plugins/help-rescapp/images/

help-rescapp_install_documentation:	plugins/help-rescapp/*html	$(help-rescapp_installdocimages_directory)
	install -d $(doctarget)/plugins/help-rescapp/
	install -m 644 plugins/help-rescapp/*html $(doctarget)/plugins/help-rescapp/





os-uninstaller_installdocimages_directory = $(subst /,_,$(wildcard plugins/os-uninstaller/images))

$(os-uninstaller_installdocimages_directory):	plugins/os-uninstaller/images/*
	install -d $(doctarget)/plugins/os-uninstaller/images/
	install -m 644 plugins/os-uninstaller/images/* $(doctarget)/plugins/os-uninstaller/images/

os-uninstaller_install_documentation:	plugins/os-uninstaller/*html	$(os-uninstaller_installdocimages_directory)
	install -d $(doctarget)/plugins/os-uninstaller/
	install -m 644 plugins/os-uninstaller/*html $(doctarget)/plugins/os-uninstaller/





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

share_log_install_documentation:	plugins/share_log/*html	$(share_log_installdocimages_directory)
	install -d $(doctarget)/plugins/share_log/
	install -m 644 plugins/share_log/*html $(doctarget)/plugins/share_log/





share_log_forum_installdocimages_directory = $(subst /,_,$(wildcard plugins/share_log_forum/images))

$(share_log_forum_installdocimages_directory):	plugins/share_log_forum/images/*
	install -d $(doctarget)/plugins/share_log_forum/images/
	install -m 644 plugins/share_log_forum/images/* $(doctarget)/plugins/share_log_forum/images/

share_log_forum_install_documentation:	plugins/share_log_forum/*html	$(share_log_forum_installdocimages_directory)
	install -d $(doctarget)/plugins/share_log_forum/
	install -m 644 plugins/share_log_forum/*html $(doctarget)/plugins/share_log_forum/





show_log_installdocimages_directory = $(subst /,_,$(wildcard plugins/show_log/images))

$(show_log_installdocimages_directory):	plugins/show_log/images/*
	install -d $(doctarget)/plugins/show_log/images/
	install -m 644 plugins/show_log/images/* $(doctarget)/plugins/show_log/images/

show_log_install_documentation:	plugins/show_log/*html	$(show_log_installdocimages_directory)
	install -d $(doctarget)/plugins/show_log/
	install -m 644 plugins/show_log/*html $(doctarget)/plugins/show_log/





sudoers_installdocimages_directory = $(subst /,_,$(wildcard plugins/sudoers/images))

$(sudoers_installdocimages_directory):	plugins/sudoers/images/*
	install -d $(doctarget)/plugins/sudoers/images/
	install -m 644 plugins/sudoers/images/* $(doctarget)/plugins/sudoers/images/

sudoers_install_documentation:	plugins/sudoers/*html	$(sudoers_installdocimages_directory)
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

ueficheck_install_documentation:	plugins/ueficheck/*html	$(ueficheck_installdocimages_directory)
	install -d $(doctarget)/plugins/ueficheck/
	install -m 644 plugins/ueficheck/*html $(doctarget)/plugins/ueficheck/





ueficreate_installdocimages_directory = $(subst /,_,$(wildcard plugins/ueficreate/images))

$(ueficreate_installdocimages_directory):	plugins/ueficreate/images/*
	install -d $(doctarget)/plugins/ueficreate/images/
	install -m 644 plugins/ueficreate/images/* $(doctarget)/plugins/ueficreate/images/

ueficreate_install_documentation:	plugins/ueficreate/*html	$(ueficreate_installdocimages_directory)
	install -d $(doctarget)/plugins/ueficreate/
	install -m 644 plugins/ueficreate/*html $(doctarget)/plugins/ueficreate/





uefifakemicrosoft_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefifakemicrosoft/images))

$(uefifakemicrosoft_installdocimages_directory):	plugins/uefifakemicrosoft/images/*
	install -d $(doctarget)/plugins/uefifakemicrosoft/images/
	install -m 644 plugins/uefifakemicrosoft/images/* $(doctarget)/plugins/uefifakemicrosoft/images/

uefifakemicrosoft_install_documentation:	plugins/uefifakemicrosoft/*html	$(uefifakemicrosoft_installdocimages_directory)
	install -d $(doctarget)/plugins/uefifakemicrosoft/
	install -m 644 plugins/uefifakemicrosoft/*html $(doctarget)/plugins/uefifakemicrosoft/





uefihidemicrosoft_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefihidemicrosoft/images))

$(uefihidemicrosoft_installdocimages_directory):	plugins/uefihidemicrosoft/images/*
	install -d $(doctarget)/plugins/uefihidemicrosoft/images/
	install -m 644 plugins/uefihidemicrosoft/images/* $(doctarget)/plugins/uefihidemicrosoft/images/

uefihidemicrosoft_install_documentation:	plugins/uefihidemicrosoft/*html	$(uefihidemicrosoft_installdocimages_directory)
	install -d $(doctarget)/plugins/uefihidemicrosoft/
	install -m 644 plugins/uefihidemicrosoft/*html $(doctarget)/plugins/uefihidemicrosoft/





uefiorder_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefiorder/images))

$(uefiorder_installdocimages_directory):	plugins/uefiorder/images/*
	install -d $(doctarget)/plugins/uefiorder/images/
	install -m 644 plugins/uefiorder/images/* $(doctarget)/plugins/uefiorder/images/

uefiorder_install_documentation:	plugins/uefiorder/*html	$(uefiorder_installdocimages_directory)
	install -d $(doctarget)/plugins/uefiorder/
	install -m 644 plugins/uefiorder/*html $(doctarget)/plugins/uefiorder/





uefipartstatus_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefipartstatus/images))

$(uefipartstatus_installdocimages_directory):	plugins/uefipartstatus/images/*
	install -d $(doctarget)/plugins/uefipartstatus/images/
	install -m 644 plugins/uefipartstatus/images/* $(doctarget)/plugins/uefipartstatus/images/

uefipartstatus_install_documentation:	plugins/uefipartstatus/*html	$(uefipartstatus_installdocimages_directory)
	install -d $(doctarget)/plugins/uefipartstatus/
	install -m 644 plugins/uefipartstatus/*html $(doctarget)/plugins/uefipartstatus/





uefireinstallmicrosoft_installdocimages_directory = $(subst /,_,$(wildcard plugins/uefireinstallmicrosoft/images))

$(uefireinstallmicrosoft_installdocimages_directory):	plugins/uefireinstallmicrosoft/images/*
	install -d $(doctarget)/plugins/uefireinstallmicrosoft/images/
	install -m 644 plugins/uefireinstallmicrosoft/images/* $(doctarget)/plugins/uefireinstallmicrosoft/images/

uefireinstallmicrosoft_install_documentation:	plugins/uefireinstallmicrosoft/*html	$(uefireinstallmicrosoft_installdocimages_directory)
	install -d $(doctarget)/plugins/uefireinstallmicrosoft/
	install -m 644 plugins/uefireinstallmicrosoft/*html $(doctarget)/plugins/uefireinstallmicrosoft/





update-grub_installdocimages_directory = $(subst /,_,$(wildcard plugins/update-grub/images))

$(update-grub_installdocimages_directory):	plugins/update-grub/images/*
	install -d $(doctarget)/plugins/update-grub/images/
	install -m 644 plugins/update-grub/images/* $(doctarget)/plugins/update-grub/images/

update-grub_install_documentation:	plugins/update-grub/*html	$(update-grub_installdocimages_directory)
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

wineasy_install_documentation:	plugins/wineasy/*html	$(wineasy_installdocimages_directory)
	install -d $(doctarget)/plugins/wineasy/
	install -m 644 plugins/wineasy/*html $(doctarget)/plugins/wineasy/





winmbr_installdocimages_directory = $(subst /,_,$(wildcard plugins/winmbr/images))

$(winmbr_installdocimages_directory):	plugins/winmbr/images/*
	install -d $(doctarget)/plugins/winmbr/images/
	install -m 644 plugins/winmbr/images/* $(doctarget)/plugins/winmbr/images/

winmbr_install_documentation:	plugins/winmbr/*html	$(winmbr_installdocimages_directory)
	install -d $(doctarget)/plugins/winmbr/
	install -m 644 plugins/winmbr/*html $(doctarget)/plugins/winmbr/





winpass_installdocimages_directory = $(subst /,_,$(wildcard plugins/winpass/images))

$(winpass_installdocimages_directory):	plugins/winpass/images/*
	install -d $(doctarget)/plugins/winpass/images/
	install -m 644 plugins/winpass/images/* $(doctarget)/plugins/winpass/images/

winpass_install_documentation:	plugins/winpass/*html	$(winpass_installdocimages_directory)
	install -d $(doctarget)/plugins/winpass/
	install -m 644 plugins/winpass/*html $(doctarget)/plugins/winpass/





winpromote_installdocimages_directory = $(subst /,_,$(wildcard plugins/winpromote/images))

$(winpromote_installdocimages_directory):	plugins/winpromote/images/*
	install -d $(doctarget)/plugins/winpromote/images/
	install -m 644 plugins/winpromote/images/* $(doctarget)/plugins/winpromote/images/

winpromote_install_documentation:	plugins/winpromote/*html	$(winpromote_installdocimages_directory)
	install -d $(doctarget)/plugins/winpromote/
	install -m 644 plugins/winpromote/*html $(doctarget)/plugins/winpromote/





winunlock_installdocimages_directory = $(subst /,_,$(wildcard plugins/winunlock/images))

$(winunlock_installdocimages_directory):	plugins/winunlock/images/*
	install -d $(doctarget)/plugins/winunlock/images/
	install -m 644 plugins/winunlock/images/* $(doctarget)/plugins/winunlock/images/

winunlock_install_documentation:	plugins/winunlock/*html	$(winunlock_installdocimages_directory)
	install -d $(doctarget)/plugins/winunlock/
	install -m 644 plugins/winunlock/*html $(doctarget)/plugins/winunlock/



install_icons:	icons/*png
	install -d $(icontarget)/
	install -m 644 icons/*png $(icontarget)/

install_applications:	applications/*desktop
	install -d $(applicationtarget)/
	install -m 644 applications/*desktop $(applicationtarget)/

install_binaries:	bin/*
	install -d $(bintarget)/
	install -m 755 bin/* $(bintarget)/

install_helpers:	helpers/*
	install -d $(helpertarget)/
	install -m 755 helpers/* $(helpertarget)/