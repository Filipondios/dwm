# Dwm Dotfiles
<b>In this guide, you'll find the installation of the <a href="https://wiki.archlinux.org/title/dwm">Dwm window manager</a>, the lightest and for me and the most efficient in terms of spending resources (RAM, disk, etc) in <a href="https://es.wikipedia.org/wiki/Arch_Linux">ArchLinux</a> (Of course is available in other Linux distros, but you'll have to chage some things when installing packages).</b>
<br>

![imagen](https://user-images.githubusercontent.com/91225771/177217238-6834a696-3089-412f-be61-f0cf5bca8709.png)

# Index
- <a href="#pre">Preparing the installation</a>
- <a href="#dnw">Download all the Dwm packages</a>
- <a href="#pak">Install the necessary packages</a>
- <a href="#conf">Configure Dwm, St and dwm-bar</a>
- <a href="#lastc">Make the last configurations</a>
- <a href="#start">Enter in the new enviroment</a>

# Other links you may want to see
- <a href="https://github.com/Filipondios/dwm/tree/main/.themes">My custom Themes</a>
  - <a href="https://github.com/Filipondios/dwm/blob/main/.themes/Default.md">Default Theme</a>
  - <a href="https://github.com/Filipondios/dwm/blob/main/.themes/Arch-Derivates.md">Arch Theme</a>
  - <a href="https://github.com/Filipondios/dwm/blob/main/.themes/Debian.md">Debian Theme</a>
  - <a href="https://github.com/Filipondios/dwm/blob/main/.themes/Outlaw%20Theme.md">Mental Outlaw Theme - Gentoo</a>

<a name="pre"></a>
# Preparing the installation
First, we will clone this repository, so we'll have the config files saved for later:
```bash
sudo pacman -S git
cd ~ & git clone https://github.com/Filipondios/Dotfiles 
```
As always when we do a graphical enviroment installation, we have to install <a href="https://wiki.archlinux.org/title/xorg">Xorg</a> and the util <a href="https://archlinux.org/packages/extra/x86_64/xorg-server/">Xorg-Server</a>. In the case that you dont't have them installed, just run the following commnads:
```bash
sudo pacman -S xorg xorg-server 
```
If you have a login display manager, unistall it or do somethig with it because we are going to use Xorg-xinit to start out enviroment. So then lets create a new file in user's home directory called .xinitrc that will execute dwm and all the configurations we want.
```bash
sudo touch .xinitrc 
```
Later we will continue doing configurations to this file.

<a name="dnw"></a>
# Installing the packages
Now we are really going to install Dwm. Lets clone the repositories of <a href="https://dwm.suckless.org/">Dwm</a>, <a href="https://st.suckless.org/">St</a> terminal and <a href="https://tools.suckless.org/dmenu/">Dmenu</a>:
```bash
cd ~/.config/ # Create the folder if don't exists 
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/st
```
Now you are going to enter in the 3 new folders and run the next command:
```bash
sudo make clean install
```

<a name="pak"></a>
# Install the necessary packages
Install the necessary packages. Nitrogen will set our wallpaper, starship modifies the terminal prompt, fish is a terminal emulator, compmgr will help us with the terminal transparency, base-devel is necesary to install the AUR helper and xrandr will help us to adjust the screen resolution:
```bash
sudo pacman -S nitrogen starship fish compmgr base-devel xrandr
```

Install the AUR helper if you dont have it, and the last package.
```bash
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R yourusername:users ./yay
cd yay
makepkg -si
yay -S transset-df # will help us with the terminal transparency too
```

Install dwm-bar
```bash
cd 
git clone https://github.com/joestandring/dwm-bar.git
```

<a name="conf"></a>
# Configure dwm, st and dwm-bar:
Before we enter in the new enviroment, we can replace the default config files with the ones that are available in this repository. First dwm:
```bash
cd
cp -r dwm/.config/dwm/config.h ~/.config/dwm6.2/config.h #Change 6.2 to your dwm version
cp -r dwm/.config/dwm/dwm.c ~/.config/dwm6.2/dwm.c #Change 6.2 to your dwm version
```
Now the St terminal:
```bash
cp -r dwm/.config/st/config.h ~/.config/st6.2/config.h #Change 6.2 to your dwm version
```

Again, you are going to enter in your dwm and st folders and run the next command:
```bash
sudo make clean install
```

Copy my dwm-bar configs:
```bash
cd
cp -r dwm/dwm-bar/dwm_bar.sh ~/dwm-bar/dwm_bar.sh
cp -r dwm/dwm-bar/bar-functions/dwm_date.sh ~/dwm-bar/bar-functions
cp -r dwm/dwm-bar/bar-functions/dwm_resources.sh ~/dwm-bar/bar-functions
```
You can always add functions in the dwm_bar.sh file. Visit the official Github repo to see more.

<a name="lastc"></a>
# Make the last configurations
Once you installed the basic packages, we are going to copy the .xinitrc file:
```bash
sudo cp dwm/.xinitrc  ~
```
You must edit this file with your preferences. For example, change the setxkbmap to your language or adjust the resolution of your screen with xrandr.

Now, copy the .bashrc file from this repo and copy it in your user's home directory:
```bash
cp -r dwm/.bashrc  ~
```

Now, copy the starship config file:
```bash
cp -r dwm/.config/starship.toml
```

Finally copy the Ubuntu Nerd Fonts:
```
cp -r dwm/.local/share/fonts/U* ~/.local/share/fonts
```

<a name="start"></a>
# Enter in Dwm
Unless I've forgotten something, that should be all the configuration. So then, we are ready to start dwm:
```
sudo reboot
startx
```

There are some keybandigs modified that are:
<pre>
Mod + F = Firefox
Mod + Enter = Terminal
Mod + m = dmenu
</pre>
Be aware that the Mod key is the Windows one. You can change it by looking in the oficial dwm site.
