# System
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux - Default set
AddPackage fwupd # Simple daemon to allow session software to update firmware

AddPackage thermald # The Linux Thermal Daemon program from 01.org
CreateLink /etc/systemd/system/dbus-org.freedesktop.thermald.service /usr/lib/systemd/system/thermald.service
CreateLink /etc/systemd/system/multi-user.target.wants/thermald.service /usr/lib/systemd/system/thermald.service

AddPackage lm_sensors # Collection of user space tools for general SMBus access and hardware monitoring
CopyFile /etc/conf.d/lm_sensors
CreateLink /etc/systemd/system/multi-user.target.wants/lm_sensors.service /usr/lib/systemd/system/lm_sensors.service

CreateLink /etc/systemd/system/sockets.target.wants/polkit-agent-helper.socket /usr/lib/systemd/system/polkit-agent-helper.socket
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket

CopyFile /etc/mkinitcpio.d/linux.preset
CopyFile /etc/locale.conf
CreateLink /etc/localtime /usr/share/zoneinfo/US/Eastern

CopyFile /etc/vconsole.conf
CopyFile /etc/sudoers
