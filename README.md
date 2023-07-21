# dotfiles

This repository contains my configuration files for my Linux system. These configuration files are located in the home directory (`~/`), and are hidden files that start with a period (`.`) to indicate that they are configuration files.

## Installation

1. Clone this repository to your local machine by running:

```
git clone https://github.com/username/dotfiles.git
```

2. Navigate to the cloned repository directory:

```
cd dotfiles
```

3. Copy the files to your home directory:

```
cp -r . ~/
```

4. If any of the configuration files already exist in your home directory, the `cp` command will prompt you to overwrite the existing files. Please make sure to backup your existing files if necessary.

## Configuration Files

This repository contains the following configuration files and directories:

- `.bashrc`: Custom configuration file for the Bash shell.
- `bin/`: A directory containing executable scripts:
    - `mirror`: A script to mirror the contents of my main screen to a second monitor.
    - `toggle_kbd`: A script to toggle the keyboard layout between US and Latin American.
    - `touchpad_tunings`: A script to configure some touchpad settings.
- `.config/`: A directory containing configuration files for various applications:
    - `alacritty/`: Configuration file for the Alacritty terminal emulator.
    - `bpytop/`: Configuration file for the Bpytop system monitor.
    - `bspwm/`: Configuration file for the Bspwm window manager.
    - `dunst/`: Configuration file for the Dunst notification daemon.
    - `firejail/`: Profiles for the Firejail sandboxing tool.
    - `fish/`: Configuration file for the Fish shell.
    - `mpv/`: Script for the MPV media player to skip intros.
    - `neofetch/`: Configuration file for the Neofetch system information tool.
    - `nvim/`: Configuration file for the NeoVim text editor.
    - `pcmanfm-qt/`: Configuration file for the PCManFM-Qt file manager.
    - `picom/`: Configuration file for the Picom compositor.
    - `polybar/`: Configuration file for the Polybar status bar.
    - `qt5ct/`: Configuration file for the Qt5 toolkit.
    - `rofi/`: Configuration file for the Rofi application launcher.
    - `rog/`: Configuration file for the Rog control center.
    - `sxhkd/`: Configuration file for the Sxhkd hotkey daemon.
    - `v4l.conf`: Configuration file for Video4Linux.
- `.face.icon`: An image file used as the user's avatar.
- `Git/`: A directory containing a bare Git repository to track changes to the dotfiles.
- `LICENSE`: The license file for this repository.
- `README.md`: This readme file.
- `.xinitrc`: Configuration file for X.Org server.
- `.xprofile`: Configuration file for X session.
- `.Xresources`: Configuration file for the X Window System.

## License

This repository is licensed under the MIT License. See the `LICENSE` file for more details.
