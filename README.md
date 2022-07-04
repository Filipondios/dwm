# Dwm Dotfiles
<b>In this guide, you'll find the installation of the <a href="https://wiki.archlinux.org/title/dwm">Dwm window manager</a>, the lightest and for me and the most efficient in terms of spending resources (RAM, disk, etc) in <a href="https://es.wikipedia.org/wiki/Arch_Linux">ArchLinux</a> (Of course is available in other Linux distros, but you'll have to chage some things when installing packages).</b>
<br>

![imagen](https://user-images.githubusercontent.com/91225771/177217238-6834a696-3089-412f-be61-f0cf5bca8709.png)

# Index
- <a href="#pre">Preparing the installation</a>
- <a href="#dnw">Download all the Dwm packages</a>

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

# Configure dwm and st:
Before we enter in the new enviroment, we can replace the default config files with the ones that are available in this repository:
```bash

```

# Enter in Dwm
Onece you installed the basic packages, we are going to edit the .xinitrc file:
```bash
echo "exec dwm"
```
