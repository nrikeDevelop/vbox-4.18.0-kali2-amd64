#!/bin/bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

if [ $(uname -r) == "4.18.0-kali2-amd64" ]
then
	dpkg -i ./linux-headers-4.18.0-kali2-amd64_4.18.10-2kali1_amd64.deb
	dpkg -i ./linux-headers-4.18.0-kali2-common_4.18.10-2kali1_all.deb

else
	echo "Your kernel is not 4.18.0-kali2-amd64. Try apt-get install virtualbox"
	exit
fi

#dpkg -i ./linux-headers-4.18.0-kali2-amd64_4.18.10-2kali1_amd64.deb
#dpkg -i ./linux-headers-4.18.0-kali2-common_4.18.10-2kali1_all.deb
