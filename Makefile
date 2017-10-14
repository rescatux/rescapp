
prefix?=/usr/local
target=$(DESTDIR)$(prefix)
doctarget=$(target)/share/doc/rescapp

all:
.PHONY	:	all


about-rescapp_install_documentation:
	install -d $(doctarget)/about-rescapp/
	install -m 755 about-rescapp/local_doc.html $(doctarget)/about-rescapp/ 


install_documentation:	about-rescapp_install_documentation


install:	install_documentation
