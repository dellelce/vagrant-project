#!/bin/bash

## FUNCTIONS ##

vagrant()
{
 rpm -ihv https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.rpm
}

virtualbox()
{
 pkg="https://download.virtualbox.org/virtualbox/6.0.4/VirtualBox-6.0-6.0.4_128413_el7-1.x86_64.rpm"

#Dependency Installed:                                                                                  SDL.x86_64 0:1.2.15-14.el7                         alsa-lib.x86_64 0:1.1.6-2.el7                     dejavu-fonts-common.noarch 0:2.33-6.el7            dejavu-sans-fonts.noarch 0:2.33-6.el7
#  fontconfig.x86_64 0:2.13.0-4.3.el7                 fontpackages-filesystem.noarch 0:1.44-8.el7       hwdata.x86_64 0:0.252-9.1.el7                      libICE.x86_64 0:1.0.9-9.el7
#  libSM.x86_64 0:1.2.2-2.el7                         libX11.x86_64 0:1.6.5-2.el7                       libX11-common.noarch 0:1.6.5-2.el7                 libXau.x86_64 0:1.0.8-2.1.el7                     libXcursor.x86_64 0:1.1.15-1.el7                   libXdamage.x86_64 0:1.1.4-4.1.el7                 libXext.x86_64 0:1.3.3-3.el7                       libXfixes.x86_64 0:5.0.3-1.el7
#  libXmu.x86_64 0:1.1.2-2.el7                        libXrender.x86_64 0:0.9.10-1.el7                  libXt.x86_64 0:1.1.5-3.el7                         libXxf86vm.x86_64 0:1.1.4-1.el7
#  libdrm.x86_64 0:2.4.91-3.el7                       libglvnd.x86_64 1:1.0.1-0.8.git5baa1e5.el7        libglvnd-glx.x86_64 1:1.0.1-0.8.git5baa1e5.el7     libpciaccess.x86_64 0:0.14-1.el7                  libvpx.x86_64 0:1.3.0-5.el7_0                      libxcb.x86_64 0:1.13-1.el7                        libxshmfence.x86_64 0:1.2-1.el7                    mesa-libGL.x86_64 0:18.0.5-4.el7_6                mesa-libglapi.x86_64 0:18.0.5-4.el7_6              opus.x86_64 0:1.0.2-6.el7                       
#Complete!
 
 # have deps so yum
 yum install -y "$pkg"
}

guestadditions()
{
 pkg="http://download1.rpmfusion.org/free/el/updates/7/x86_64/v/VirtualBox-guest-additions-6.0.4-2.el7.x86_64.rpm"
 pkg="http://download1.rpmfusion.org/free/el/updates/7/x86_64/v/VirtualBox-guest-additions-6.0.4-2.el7.x86_64.rpm"

 yum install -y "$pkg"
}

yumrepo()
{
  target="/etc/yum.repos.d"
  repo="http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo"
  bname=$(basename "$repo")
  fname="$target/$bname"

  wget -O "$fname" "$repo"

  ls -lt "$fname"

} 

dkms()
{
  # epel must be "enabled"
  yum install dkms
}


## MAIN ###

#virtualbox
guestadditions
#yumrepo

## EOF ##
