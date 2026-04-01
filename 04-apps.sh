# Apps
AddPackage emacs # The extensible, customizable, self-documenting real-time display editor
AddPackage firefox # Fast, Private & Safe Web Browser
AddPackage gvim # Vi Improved, a highly configurable, improved version of the vi text editor (with advanced features, such as a GUI)
AddPackage --foreign vim-colorschemes # A very large collection of color schemes from vim.org
AddPackage okular # Document Viewer
AddPackage hunspell-en_us # US English hunspell dictionaries
AddPackage nuspell # Fast and safe spellchecking C++ library
AddPackage pass # The 'pass' command used to get API keys from a file that is password protected. Used for backups.
AddPackage restic # Used for backups.

## GUI Environment
AddPackageGroup gnome
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/gdm.service
CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service
CreateLink /etc/systemd/user/graphical-session-pre.target.wants/xdg-user-dirs.service /usr/lib/systemd/user/xdg-user-dirs.service
CreateLink /etc/systemd/user/sockets.target.wants/gnome-keyring-daemon.socket /usr/lib/systemd/user/gnome-keyring-daemon.socket
