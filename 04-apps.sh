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

## Development
AddPackage boost # Free peer-reviewed portable C++ source libraries (development headers)
AddPackage cmake # A cross-platform open-source make system
AddPackage clang # C language family frontend for LLVM
AddPackage ninja # Small build system with a focus on speed
AddPackage hyperfine # A command-line benchmarking tool
AddPackage git # the fast distributed version control system
AddPackage tk # A windowing toolkit for use with tcl (needed for git gui)
AddPackage github-cli # The GitHub CLI
AddPackage ghc # The Glasgow Haskell Compiler
AddPackage npm # JavaScript package manager

## Fonts
AddPackage gnu-free-fonts # A free family of scalable outline fonts
AddPackage adobe-source-code-pro-fonts # Monospaced font family for user interface and coding environments
AddPackage ttf-bitstream-vera # Bitstream Vera fonts.
AddPackage ttf-cascadia-code # A monospaced font by Microsoft that includes programming ligatures
AddPackage ttf-croscore # Chrome OS core fonts
AddPackage ttf-dejavu # Font family based on the Bitstream Vera Fonts with a wider range of characters
AddPackage ttf-fira-code # Monospaced font with programming ligatures
AddPackage ttf-ibm-plex # IBM Plex Mono, Sans, and Serif
AddPackage ttf-input # Fonts for code from DJR & Font Bureau
AddPackage ttf-input-nerd # Patched font Input containing nerd font symbols
AddPackage ttf-jetbrains-mono # Typeface for developers, by JetBrains
AddPackage ttf-liberation # Font family which aims at metric compatibility with Arial, Times New Roman, and Courier New
AddPackage ttf-libertinus # Fonts based on Linux Libertine/Biolinum, with extended math support
AddPackage ttf-roboto # Google's signature family of fonts
AddPackage noto-fonts-cjk # Google Noto CJK fonts
