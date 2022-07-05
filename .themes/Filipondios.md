# Filipondios Theme
This theme is the default dwm theme that is available in the repository. If you changed the theme and you just want to switch back, follow the steps bellow. 

![imagen](https://user-images.githubusercontent.com/91225771/177217238-6834a696-3089-412f-be61-f0cf5bca8709.png)

# Dwm Theme 
First we have to go to the dwm folder, where all the custom data is located and modify the config.h file. Then, change the next lines:

```C
static const char col_white[]	    = "#ffffff";
static const char col_blue[]	    = "#5555ff";
static const char col_darkBlue[]    = "#0f101a";
static const char col_black[]	    = "#000000";

static const char *colors[][3]      = {
	/*               foreground   background    border  */
	[SchemeNorm] = { col_white, col_darkBlue, col_black },
	[SchemeSel]  = { col_white, col_blue, col_black },
};
```

# St Theme
Now do the same but with the config.h file that is located in the custom st folder. Change those lines:
```C
static const char *colorname[] = {
	/* 8 normal colors */
	"black",
	"#f55555",
	"#55ff55",
	"#ffff55",
	"#5555ff",
	"#996bb7",
	"#5555ff",
	"gray90",

	/* 8 bright colors */
	"gray50",
	"#f55555",
	"#55ff55",
	"#ffff55",
	"#5555ff",
	"#996bb7",
	"#5555ff",
	"white",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#cccccc",
	"#555555",
	"gray90",  /* default foreground colour */
	"#0f101a", /* background colour */
};
```
