
prefix?=/usr/local
target=$(DESTDIR)$(prefix)
doctarget=$(target)/share/doc/rescapp

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


install:	install_documentation



about-rescapp_installdocimages_directory = $(subst /,_,$(wildcard about-rescapp/images))

$(about-rescapp_installdocimages_directory):	about-rescapp/images/*
	install -d $(doctarget)/about-rescapp/images/
	install -m 755 about-rescapp/images/* $(doctarget)/about-rescapp/images/

about-rescapp_install_documentation:	about-rescapp/*html	$(about-rescapp_installdocimages_directory)
	install -d $(doctarget)/about-rescapp/
	install -m 755 about-rescapp/*html $(doctarget)/about-rescapp/





bootinfoscript_installdocimages_directory = $(subst /,_,$(wildcard bootinfoscript/images))

$(bootinfoscript_installdocimages_directory):	bootinfoscript/images/*
	install -d $(doctarget)/bootinfoscript/images/
	install -m 755 bootinfoscript/images/* $(doctarget)/bootinfoscript/images/

bootinfoscript_install_documentation:	bootinfoscript/*html	$(bootinfoscript_installdocimages_directory)
	install -d $(doctarget)/bootinfoscript/
	install -m 755 bootinfoscript/*html $(doctarget)/bootinfoscript/





boot-repair_installdocimages_directory = $(subst /,_,$(wildcard boot-repair/images))

$(boot-repair_installdocimages_directory):	boot-repair/images/*
	install -d $(doctarget)/boot-repair/images/
	install -m 755 boot-repair/images/* $(doctarget)/boot-repair/images/

boot-repair_install_documentation:	boot-repair/*html	$(boot-repair_installdocimages_directory)
	install -d $(doctarget)/boot-repair/
	install -m 755 boot-repair/*html $(doctarget)/boot-repair/





chat_installdocimages_directory = $(subst /,_,$(wildcard chat/images))

$(chat_installdocimages_directory):	chat/images/*
	install -d $(doctarget)/chat/images/
	install -m 755 chat/images/* $(doctarget)/chat/images/

chat_install_documentation:	chat/*html	$(chat_installdocimages_directory)
	install -d $(doctarget)/chat/
	install -m 755 chat/*html $(doctarget)/chat/





chpasswd_installdocimages_directory = $(subst /,_,$(wildcard chpasswd/images))

$(chpasswd_installdocimages_directory):	chpasswd/images/*
	install -d $(doctarget)/chpasswd/images/
	install -m 755 chpasswd/images/* $(doctarget)/chpasswd/images/

chpasswd_install_documentation:	chpasswd/*html	$(chpasswd_installdocimages_directory)
	install -d $(doctarget)/chpasswd/
	install -m 755 chpasswd/*html $(doctarget)/chpasswd/





fsck_installdocimages_directory = $(subst /,_,$(wildcard fsck/images))

$(fsck_installdocimages_directory):	fsck/images/*
	install -d $(doctarget)/fsck/images/
	install -m 755 fsck/images/* $(doctarget)/fsck/images/

fsck_install_documentation:	fsck/*html	$(fsck_installdocimages_directory)
	install -d $(doctarget)/fsck/
	install -m 755 fsck/*html $(doctarget)/fsck/





gparted_installdocimages_directory = $(subst /,_,$(wildcard gparted/images))

$(gparted_installdocimages_directory):	gparted/images/*
	install -d $(doctarget)/gparted/images/
	install -m 755 gparted/images/* $(doctarget)/gparted/images/

gparted_install_documentation:	gparted/*html	$(gparted_installdocimages_directory)
	install -d $(doctarget)/gparted/
	install -m 755 gparted/*html $(doctarget)/gparted/





gpt-check-bios-grub_installdocimages_directory = $(subst /,_,$(wildcard gpt-check-bios-grub/images))

$(gpt-check-bios-grub_installdocimages_directory):	gpt-check-bios-grub/images/*
	install -d $(doctarget)/gpt-check-bios-grub/images/
	install -m 755 gpt-check-bios-grub/images/* $(doctarget)/gpt-check-bios-grub/images/

gpt-check-bios-grub_install_documentation:	gpt-check-bios-grub/*html	$(gpt-check-bios-grub_installdocimages_directory)
	install -d $(doctarget)/gpt-check-bios-grub/
	install -m 755 gpt-check-bios-grub/*html $(doctarget)/gpt-check-bios-grub/





gpt-create-hybrid-mbr_installdocimages_directory = $(subst /,_,$(wildcard gpt-create-hybrid-mbr/images))

$(gpt-create-hybrid-mbr_installdocimages_directory):	gpt-create-hybrid-mbr/images/*
	install -d $(doctarget)/gpt-create-hybrid-mbr/images/
	install -m 755 gpt-create-hybrid-mbr/images/* $(doctarget)/gpt-create-hybrid-mbr/images/

gpt-create-hybrid-mbr_install_documentation:	gpt-create-hybrid-mbr/*html	$(gpt-create-hybrid-mbr_installdocimages_directory)
	install -d $(doctarget)/gpt-create-hybrid-mbr/
	install -m 755 gpt-create-hybrid-mbr/*html $(doctarget)/gpt-create-hybrid-mbr/





gpt-recompute-hybrid-mbr-chs_installdocimages_directory = $(subst /,_,$(wildcard gpt-recompute-hybrid-mbr-chs/images))

$(gpt-recompute-hybrid-mbr-chs_installdocimages_directory):	gpt-recompute-hybrid-mbr-chs/images/*
	install -d $(doctarget)/gpt-recompute-hybrid-mbr-chs/images/
	install -m 755 gpt-recompute-hybrid-mbr-chs/images/* $(doctarget)/gpt-recompute-hybrid-mbr-chs/images/

gpt-recompute-hybrid-mbr-chs_install_documentation:	gpt-recompute-hybrid-mbr-chs/*html	$(gpt-recompute-hybrid-mbr-chs_installdocimages_directory)
	install -d $(doctarget)/gpt-recompute-hybrid-mbr-chs/
	install -m 755 gpt-recompute-hybrid-mbr-chs/*html $(doctarget)/gpt-recompute-hybrid-mbr-chs/





grubeasy_installdocimages_directory = $(subst /,_,$(wildcard grubeasy/images))

$(grubeasy_installdocimages_directory):	grubeasy/images/*
	install -d $(doctarget)/grubeasy/images/
	install -m 755 grubeasy/images/* $(doctarget)/grubeasy/images/

grubeasy_install_documentation:	grubeasy/*html	$(grubeasy_installdocimages_directory)
	install -d $(doctarget)/grubeasy/
	install -m 755 grubeasy/*html $(doctarget)/grubeasy/





grub-install_installdocimages_directory = $(subst /,_,$(wildcard grub-install/images))

$(grub-install_installdocimages_directory):	grub-install/images/*
	install -d $(doctarget)/grub-install/images/
	install -m 755 grub-install/images/* $(doctarget)/grub-install/images/

grub-install_install_documentation:	grub-install/*html	$(grub-install_installdocimages_directory)
	install -d $(doctarget)/grub-install/
	install -m 755 grub-install/*html $(doctarget)/grub-install/





help-rescapp_installdocimages_directory = $(subst /,_,$(wildcard help-rescapp/images))

$(help-rescapp_installdocimages_directory):	help-rescapp/images/*
	install -d $(doctarget)/help-rescapp/images/
	install -m 755 help-rescapp/images/* $(doctarget)/help-rescapp/images/

help-rescapp_install_documentation:	help-rescapp/*html	$(help-rescapp_installdocimages_directory)
	install -d $(doctarget)/help-rescapp/
	install -m 755 help-rescapp/*html $(doctarget)/help-rescapp/





os-uninstaller_installdocimages_directory = $(subst /,_,$(wildcard os-uninstaller/images))

$(os-uninstaller_installdocimages_directory):	os-uninstaller/images/*
	install -d $(doctarget)/os-uninstaller/images/
	install -m 755 os-uninstaller/images/* $(doctarget)/os-uninstaller/images/

os-uninstaller_install_documentation:	os-uninstaller/*html	$(os-uninstaller_installdocimages_directory)
	install -d $(doctarget)/os-uninstaller/
	install -m 755 os-uninstaller/*html $(doctarget)/os-uninstaller/





photorec_installdocimages_directory = $(subst /,_,$(wildcard photorec/images))

$(photorec_installdocimages_directory):	photorec/images/*
	install -d $(doctarget)/photorec/images/
	install -m 755 photorec/images/* $(doctarget)/photorec/images/

photorec_install_documentation:	photorec/*html	$(photorec_installdocimages_directory)
	install -d $(doctarget)/photorec/
	install -m 755 photorec/*html $(doctarget)/photorec/





share_log_installdocimages_directory = $(subst /,_,$(wildcard share_log/images))

$(share_log_installdocimages_directory):	share_log/images/*
	install -d $(doctarget)/share_log/images/
	install -m 755 share_log/images/* $(doctarget)/share_log/images/

share_log_install_documentation:	share_log/*html	$(share_log_installdocimages_directory)
	install -d $(doctarget)/share_log/
	install -m 755 share_log/*html $(doctarget)/share_log/





share_log_forum_installdocimages_directory = $(subst /,_,$(wildcard share_log_forum/images))

$(share_log_forum_installdocimages_directory):	share_log_forum/images/*
	install -d $(doctarget)/share_log_forum/images/
	install -m 755 share_log_forum/images/* $(doctarget)/share_log_forum/images/

share_log_forum_install_documentation:	share_log_forum/*html	$(share_log_forum_installdocimages_directory)
	install -d $(doctarget)/share_log_forum/
	install -m 755 share_log_forum/*html $(doctarget)/share_log_forum/





show_log_installdocimages_directory = $(subst /,_,$(wildcard show_log/images))

$(show_log_installdocimages_directory):	show_log/images/*
	install -d $(doctarget)/show_log/images/
	install -m 755 show_log/images/* $(doctarget)/show_log/images/

show_log_install_documentation:	show_log/*html	$(show_log_installdocimages_directory)
	install -d $(doctarget)/show_log/
	install -m 755 show_log/*html $(doctarget)/show_log/





sudoers_installdocimages_directory = $(subst /,_,$(wildcard sudoers/images))

$(sudoers_installdocimages_directory):	sudoers/images/*
	install -d $(doctarget)/sudoers/images/
	install -m 755 sudoers/images/* $(doctarget)/sudoers/images/

sudoers_install_documentation:	sudoers/*html	$(sudoers_installdocimages_directory)
	install -d $(doctarget)/sudoers/
	install -m 755 sudoers/*html $(doctarget)/sudoers/





testdisk_installdocimages_directory = $(subst /,_,$(wildcard testdisk/images))

$(testdisk_installdocimages_directory):	testdisk/images/*
	install -d $(doctarget)/testdisk/images/
	install -m 755 testdisk/images/* $(doctarget)/testdisk/images/

testdisk_install_documentation:	testdisk/*html	$(testdisk_installdocimages_directory)
	install -d $(doctarget)/testdisk/
	install -m 755 testdisk/*html $(doctarget)/testdisk/





ueficheck_installdocimages_directory = $(subst /,_,$(wildcard ueficheck/images))

$(ueficheck_installdocimages_directory):	ueficheck/images/*
	install -d $(doctarget)/ueficheck/images/
	install -m 755 ueficheck/images/* $(doctarget)/ueficheck/images/

ueficheck_install_documentation:	ueficheck/*html	$(ueficheck_installdocimages_directory)
	install -d $(doctarget)/ueficheck/
	install -m 755 ueficheck/*html $(doctarget)/ueficheck/





ueficreate_installdocimages_directory = $(subst /,_,$(wildcard ueficreate/images))

$(ueficreate_installdocimages_directory):	ueficreate/images/*
	install -d $(doctarget)/ueficreate/images/
	install -m 755 ueficreate/images/* $(doctarget)/ueficreate/images/

ueficreate_install_documentation:	ueficreate/*html	$(ueficreate_installdocimages_directory)
	install -d $(doctarget)/ueficreate/
	install -m 755 ueficreate/*html $(doctarget)/ueficreate/





uefifakemicrosoft_installdocimages_directory = $(subst /,_,$(wildcard uefifakemicrosoft/images))

$(uefifakemicrosoft_installdocimages_directory):	uefifakemicrosoft/images/*
	install -d $(doctarget)/uefifakemicrosoft/images/
	install -m 755 uefifakemicrosoft/images/* $(doctarget)/uefifakemicrosoft/images/

uefifakemicrosoft_install_documentation:	uefifakemicrosoft/*html	$(uefifakemicrosoft_installdocimages_directory)
	install -d $(doctarget)/uefifakemicrosoft/
	install -m 755 uefifakemicrosoft/*html $(doctarget)/uefifakemicrosoft/





uefihidemicrosoft_installdocimages_directory = $(subst /,_,$(wildcard uefihidemicrosoft/images))

$(uefihidemicrosoft_installdocimages_directory):	uefihidemicrosoft/images/*
	install -d $(doctarget)/uefihidemicrosoft/images/
	install -m 755 uefihidemicrosoft/images/* $(doctarget)/uefihidemicrosoft/images/

uefihidemicrosoft_install_documentation:	uefihidemicrosoft/*html	$(uefihidemicrosoft_installdocimages_directory)
	install -d $(doctarget)/uefihidemicrosoft/
	install -m 755 uefihidemicrosoft/*html $(doctarget)/uefihidemicrosoft/





uefiorder_installdocimages_directory = $(subst /,_,$(wildcard uefiorder/images))

$(uefiorder_installdocimages_directory):	uefiorder/images/*
	install -d $(doctarget)/uefiorder/images/
	install -m 755 uefiorder/images/* $(doctarget)/uefiorder/images/

uefiorder_install_documentation:	uefiorder/*html	$(uefiorder_installdocimages_directory)
	install -d $(doctarget)/uefiorder/
	install -m 755 uefiorder/*html $(doctarget)/uefiorder/





uefipartstatus_installdocimages_directory = $(subst /,_,$(wildcard uefipartstatus/images))

$(uefipartstatus_installdocimages_directory):	uefipartstatus/images/*
	install -d $(doctarget)/uefipartstatus/images/
	install -m 755 uefipartstatus/images/* $(doctarget)/uefipartstatus/images/

uefipartstatus_install_documentation:	uefipartstatus/*html	$(uefipartstatus_installdocimages_directory)
	install -d $(doctarget)/uefipartstatus/
	install -m 755 uefipartstatus/*html $(doctarget)/uefipartstatus/





uefireinstallmicrosoft_installdocimages_directory = $(subst /,_,$(wildcard uefireinstallmicrosoft/images))

$(uefireinstallmicrosoft_installdocimages_directory):	uefireinstallmicrosoft/images/*
	install -d $(doctarget)/uefireinstallmicrosoft/images/
	install -m 755 uefireinstallmicrosoft/images/* $(doctarget)/uefireinstallmicrosoft/images/

uefireinstallmicrosoft_install_documentation:	uefireinstallmicrosoft/*html	$(uefireinstallmicrosoft_installdocimages_directory)
	install -d $(doctarget)/uefireinstallmicrosoft/
	install -m 755 uefireinstallmicrosoft/*html $(doctarget)/uefireinstallmicrosoft/





update-grub_installdocimages_directory = $(subst /,_,$(wildcard update-grub/images))

$(update-grub_installdocimages_directory):	update-grub/images/*
	install -d $(doctarget)/update-grub/images/
	install -m 755 update-grub/images/* $(doctarget)/update-grub/images/

update-grub_install_documentation:	update-grub/*html	$(update-grub_installdocimages_directory)
	install -d $(doctarget)/update-grub/
	install -m 755 update-grub/*html $(doctarget)/update-grub/





web_installdocimages_directory = $(subst /,_,$(wildcard web/images))

$(web_installdocimages_directory):	web/images/*
	install -d $(doctarget)/web/images/
	install -m 755 web/images/* $(doctarget)/web/images/

web_install_documentation:	web/*html	$(web_installdocimages_directory)
	install -d $(doctarget)/web/
	install -m 755 web/*html $(doctarget)/web/





wineasy_installdocimages_directory = $(subst /,_,$(wildcard wineasy/images))

$(wineasy_installdocimages_directory):	wineasy/images/*
	install -d $(doctarget)/wineasy/images/
	install -m 755 wineasy/images/* $(doctarget)/wineasy/images/

wineasy_install_documentation:	wineasy/*html	$(wineasy_installdocimages_directory)
	install -d $(doctarget)/wineasy/
	install -m 755 wineasy/*html $(doctarget)/wineasy/





winmbr_installdocimages_directory = $(subst /,_,$(wildcard winmbr/images))

$(winmbr_installdocimages_directory):	winmbr/images/*
	install -d $(doctarget)/winmbr/images/
	install -m 755 winmbr/images/* $(doctarget)/winmbr/images/

winmbr_install_documentation:	winmbr/*html	$(winmbr_installdocimages_directory)
	install -d $(doctarget)/winmbr/
	install -m 755 winmbr/*html $(doctarget)/winmbr/





winpass_installdocimages_directory = $(subst /,_,$(wildcard winpass/images))

$(winpass_installdocimages_directory):	winpass/images/*
	install -d $(doctarget)/winpass/images/
	install -m 755 winpass/images/* $(doctarget)/winpass/images/

winpass_install_documentation:	winpass/*html	$(winpass_installdocimages_directory)
	install -d $(doctarget)/winpass/
	install -m 755 winpass/*html $(doctarget)/winpass/





winpromote_installdocimages_directory = $(subst /,_,$(wildcard winpromote/images))

$(winpromote_installdocimages_directory):	winpromote/images/*
	install -d $(doctarget)/winpromote/images/
	install -m 755 winpromote/images/* $(doctarget)/winpromote/images/

winpromote_install_documentation:	winpromote/*html	$(winpromote_installdocimages_directory)
	install -d $(doctarget)/winpromote/
	install -m 755 winpromote/*html $(doctarget)/winpromote/





winunlock_installdocimages_directory = $(subst /,_,$(wildcard winunlock/images))

$(winunlock_installdocimages_directory):	winunlock/images/*
	install -d $(doctarget)/winunlock/images/
	install -m 755 winunlock/images/* $(doctarget)/winunlock/images/

winunlock_install_documentation:	winunlock/*html	$(winunlock_installdocimages_directory)
	install -d $(doctarget)/winunlock/
	install -m 755 winunlock/*html $(doctarget)/winunlock/





