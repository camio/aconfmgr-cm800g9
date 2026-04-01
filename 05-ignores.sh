# Ignores
IgnorePath '/var/lib/pacman/local/*'
IgnorePath '/var/log/journal/*'
## Boot binaries
IgnorePath '/boot/*.img'
IgnorePath '/boot/*/*.EFI'
IgnorePath '/boot/*/*.efi'
IgnorePath '/boot/vmlin*'
## Certificate databases
IgnorePath '/etc/ca-certificates/extracted/*'
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/pacman.d/gnupg/*'
## Cache and generated files
IgnorePath '/etc/*.cache'
IgnorePath '/etc/*.gen'
## Password files
IgnorePath '/etc/*shadow*'
IgnorePath '/usr/share/*'
## Configuration database
IgnorePath '/etc/dconf'
## Mount files
IgnorePath '*/.updated'
IgnorePath '*/lost+found/*'
## Opt packages (check that they don't include config)
IgnorePath '/opt/*'
## Binary libraries
IgnorePath '/usr/lib/*'
## Local binaries
IgnorePath '/usr/local/include/*'
IgnorePath '/usr/local/lib/*'
IgnorePath '/usr/local/share/applications/mimeinfo.cache'
## Var databases, logs, swap and temp files
IgnorePath '/var/db/sudo'
IgnorePath '/var/lib/*'
IgnorePath '/var/log/*'
IgnorePath '/var/swap*'
IgnorePath '/var/tmp/*'

## Other stuff
IgnorePath '/lost+found'
IgnorePath '/etc/fonts/conf.d/*'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/printcap'
IgnorePath '/etc/shells' # Automatically created through shell installations
IgnorePath '/etc/pacman.d/mirrorlist'
IgnorePath '/etc/os-release'
IgnorePath '/etc/audisp'
IgnorePath '/etc/audit'
IgnorePath '/etc/brkapi.key'
IgnorePath '/etc/colord'
IgnorePath '/etc/cups/*'
IgnorePath '/etc/cups/classes.conf'
IgnorePath '/etc/gnome-remote-desktop'
IgnorePath '/usr/bin/groupmems' # Not sure why this is showing permission changes, but it isn't config

## Machine-specific non-configuration
IgnorePath '/etc/passwd*'
IgnorePath '/etc/subgid*'
IgnorePath '/etc/subuid*'
IgnorePath '/etc/group*'
IgnorePath '/etc/hostname'
IgnorePath '/etc/fstab'
IgnorePath '/etc/nvme/hostid'
IgnorePath '/etc/nvme/hostnqn'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/machine-id'
IgnorePath '/boot/*'
IgnorePath '/etc/brlapi.key'

# New ignores
IgnorePackage lm_sensors
IgnorePath '/etc/conf.d/lm_sensors'
IgnorePath '/etc/systemd/system/multi-user.target.wants/lm_sensors.service'
IgnorePath '/etc/systemd/system/sockets.target.wants/polkit-agent-helper.socket'
IgnorePath '/usr/bin/gemini'
IgnorePath '/etc/pacman.d'
IgnorePath '/etc/pacman.d/mirrorlist.pacnew'
IgnorePath '/var/spool/cups/*'
IgnorePath '/etc/cups/classes.conf'
