# Debian Theme
This theme is based in the Debian colors. For making it, I picked them from the various Arch websites, like the Wiki, forums etc. During theprocess,
i saw that the original red-Debian was really difficult to see and any color matched with it, so i had to use other type of red. Anyways, to switch 
to this theme, follow the steps indicated bellow. 

![imagen](https://user-images.githubusercontent.com/91225771/177655572-4fe69d51-b6a9-45da-83f6-d30258f78718.png)

# Dwm Theme 
First we have to go to the dwm folder, where all the custom data is located and modify the config.h file. Then, change the next lines:

```C
static const char col_red[]	    = "#f55555";
static const char col_white[]       = "#ffffff";
static const char col_black[]	    = "#000000";
static const char col_black2[]	    = "#0f0e0f";

static const char *colors[][3]      = {
	/*               foreground   background    border  */
	[SchemeNorm] = { col_white, col_black2, col_black },
	[SchemeSel]  = { col_white, col_red, col_black },
};
```

# St Theme
Now do the same but with the config.h file that is located in the custom st folder. Change those lines:
```C
static const char *colorname[] = {
	/* 8 normal colors */
	"black",
	"#f55555",
	"#1ba269",
	"#e3e326",
	"#25a1b3",
	"#a2734c",
	"#1ba269",
	"gray90",

	/* 8 bright colors */
	"black",
	"#f55555",
	"#1ba269",
	"#e3e326",
	"#006de0",
	"#1ba269",
	"#55555f",
	"white",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#cccccc",
	"#555555",
	"#f2f3f7",  /* foreground colour */
	"#191618", /* background colour */
};
```

