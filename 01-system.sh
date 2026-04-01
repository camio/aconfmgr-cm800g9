# System
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux - Default set
AddPackage fwupd # Simple daemon to allow session software to update firmware

# Networking
echo em800g9 > "$(CreateFile /etc/hostname)"

AddPackage thermald # The Linux Thermal Daemon program from 01.org
CreateLink /etc/systemd/system/dbus-org.freedesktop.thermald.service /usr/lib/systemd/system/thermald.service
CreateLink /etc/systemd/system/multi-user.target.wants/thermald.service /usr/lib/systemd/system/thermald.service

CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket

CopyFile /etc/mkinitcpio.d/linux.preset
CopyFile /etc/locale.conf
CreateLink /etc/localtime /usr/share/zoneinfo/US/Eastern

CopyFile /etc/vconsole.conf
CopyFile /etc/sudoers

# Locales
sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' "$(GetPackageOriginalFile glibc /etc/locale.gen)"
