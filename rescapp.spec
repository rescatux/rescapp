Name:           rescapp
Version:        3.54b1
Release:        1%{?dist}
Summary:        Rescapp is the Rescatux main program.

License:        GPLv3+
URL:            https://github.com/rescatux/%{name}
Source0:        https://github.com/rescatux/%{name}/archive/v%{version}.tar.gz

BuildRequires:  make,coreutils
Requires:       python3-qt5,python3-devel,python3-qt5-webkit,python3-sip,dmraid,lvm2,gpart
Requires:       reiserfs-utils,xfsprogs,policycoreutils-python-utils,libselinux-utils,xfsdump
Requires:       efibootmgr,python3-pyparted,chntpw,setools-console,selinux-policy-mls,setools
Requires:       mcstrans,gdisk,ntfs-3g,policycoreutils-gui,cryptsetup-libs,btrfs-progs
Requires:       zenity,xdg-utils,hexchat,syslinux,pastebinit,gawk,extundelete,os-prober
Requires:       mokutil,python3-libselinux,dosfstools,cryptsetup
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

%description
Rescapp is the Rescatux main program. It is a nice wizard that helps you in your rescue tasks.

%prep
%setup -q -n %{name}-%{version}

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT%{_bindir}%{_libdir}

%makeinstall

%clean
rm -rf $RPM_BUILD_ROOT

%files
%{_bindir}
/usr/lib/*
%{_datadir}
%{_docdir}
%license  COPYING

%changelog
* Tue Oct 15 2019 Unknown name <christopher.gregory@mail.com> 3.54b1-1
- 

* Tue Oct 15 2019 Unknown name <christopher.gregory@mail.com>
- 

* Tue Oct 15 2019 Unknown name <christopher.gregory@mail.com>
- 

* Tue Oct 15 2019 Unknown name <christopher.gregory@mail.com> 2.54b1-1
- 

* Tue Oct 15 2019 Unknown name <christopher.gregory@mail.com> 1.54b1-1
- new package built with tito

* Sun Sep 22 2019 Christopher Gregory <christopher.gregory@mail.com> - 0.54b1-1
- Created this spec file from scratch to package Rescapp for use on rpm based systems. 
