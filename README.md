# Dotfiles

My personal dotfiles for Arch Linux with Hyprland, Waybar, Kitty, Ranger, Waypaper, Wlogout, and Wofi.

## Features
- **Hyprland**: Wayland tiling window manager configuration
- **Waybar**: Custom status bar setup
- **Kitty**: Terminal emulator setup
- **Ranger**: Terminal file manager configuration
- **Waypaper**: Wallpaper manager settings
- **Wlogout**: Logout menu configuration
- **Wofi**: Application launcher setup

## Installation
### Clone the Repository
```sh
git clone --bare https://github.com/yourusername/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
```

### Prevent Untracked Files from Being Overwritten
```sh
mkdir -p .config-backup
dotfiles checkout 2>&1 | egrep "\s+" | awk {'print $1'} | xargs -I{} mv {} .config-backup/
dotfiles checkout
```

### Set Git Configurations
```sh
dotfiles config --local status.showUntrackedFiles no
```

## Usage
To manage your dotfiles, use the `dotfiles` alias:
```sh
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Updated Vim config"
dotfiles push
```

## Customization
Feel free to tweak the configurations to fit your workflow. Contributions and suggestions are welcome!

