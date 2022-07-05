# Arch Theme
This theme is based in the Arch-Linux colors. For making it, I picked them from the various Arch websites, like the Wiki, forums etc. To switch to this theme, follow the steps indicated bellow. 

![imagen](https://user-images.githubusercontent.com/91225771/177427320-d1c70edc-8c4f-4dfb-bda1-8ea516b4eb96.png)

# Dwm Theme 
First we have to go to the dwm folder, where all the custom data is located and modify the config.h file. Then, change the next lines:

```C
static const char col_darkGrey[]	= "#333333";
static const char col_lightBlue[]	= "#1793d1";
static const char col_white[]       = "#ffffff";
static const char col_black[]	    = "#000000";

static const char *colors[][3]      = {
	/*               foreground   background    border  */
	[SchemeNorm] = { col_white, col_darkGrey, col_black },
	[SchemeSel]  = { col_white, col_lightBlue, col_black },
};
```

# St Theme
Now do the same but with the config.h file that is located in the custom st folder. Change those lines:
```C
static const char *colorname[] = {
	/* 8 normal colors */
	"black",
	"#f26522",
	"#ddffdd",
	"#ffffdd",
	"#1793d1",
	"#996bb7",
	"#1793d1",
	"#ebf1f5",

	/* 8 bright colors */
	"black",
	"#f26522",
	"#ddffdd",
	"#ffffdd",
	"#1793d1",
	"#996bb7",
	"#1793d1",
	"#ebf1f5",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#cccccc",
	"#555555",
	"#ebf1f5",  /* foreground colour */
	"#333333", /* background colour */
};
```
