# System Tools
AddPackage btop # A monitor of system resources, bpytop ported to C++
AddPackage man-db # A utility for reading man pages
AddPackage pavucontrol # PulseAudio Volume Control
AddPackage s-tui # Terminal UI stress test and monitoring tool
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage stress # A tool that stress tests your system (CPU, memory, I/O, disks)
AddPackage inetutils # Commands like `hostname`
AddPackage ripgrep # A search tool that combines the usability of ag with the raw speed of grep
AddPackage jq # Command-line JSON processor
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign paru # Feature packed AUR helper

# Cache maintenance
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
CreateLink /etc/systemd/system/timers.target.wants/paccache.timer /usr/lib/systemd/system/paccache.timer

# Swap management
AddPackage zram-generator # Systemd-based generator for zram swap devices
printf "[zram0]\nzram-size = 8192\n" > "$(CreateFile /etc/systemd/zram-generator.conf)"
