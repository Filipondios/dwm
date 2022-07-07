# MENTAL OUTLAW THEME - Gentoo

This theme is based in the theme that <a href="https://www.youtube.com/c/MentalOutlaw">Mental Outlaw</a> has. This is a Youtube channell that makes a lot
of content of Gentoo features, other Linux distros. I really recommend you to see his videos if you are interested in that content, because he explains very
clearly everything. <b>IMPORTANT: I give all credit of the theme to him.</b>

![imagen](https://user-images.githubusercontent.com/91225771/177769492-06f47114-3b0e-463a-8450-af25c70574fd.png)

# Dwm Theme 
First we have to go to the dwm folder, where all the custom data is located and modify the config.h file. Then, change the next lines:

```C
static const char col_white[]       = "#ffffff";
static const char col_gray5[]	    = "#454345";
static const char col_orange[]	    = "#fda528";

static const char *colors[][3]      = {
	/*               foreground   background    border  */
	[SchemeNorm] = { col_white, col_gray5, col_gray5 },
	[SchemeSel]  = { col_white, col_orange, col_orange },
};
```

# St Theme
Now do the same but with the config.h file that is located in the custom st folder. Change those lines:
```C
static const char *colorname[] = {
	/* 8 normal colors */
	"black",
	"#f55555",
	"#2a7f4f",
	"#fda528",
	"#5555ff",
	"#996bb7",
	"#5555ff",
	"gray90",

	/* 8 bright colors */
	"black",
	"#f55555",
	"#2a7f4f",
	"#fda528",
	"#5c5cff",
	"#996bb7",
	"#5555ff",
	"white",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#cccccc",
	"#555555",
	"gray90",  /* foreground colour */
	"#1d1f20", /* background colour */
};
```

# BASH THEME
First, if you have enabled fish, we need to disable it, because we are not goig to use it. Then we are going to
write this in the <b>.bashrc</b> file:
```bash
#!bin/bash
#Loads the console profile
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf
2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7
)\]\\$ \[$(tput sgr0)\]"

LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35
:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.od
t=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:
*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS
```


