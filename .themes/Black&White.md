# Black & White Theme
This theme was made by transforming every color of the default theme into a gray-scale of it. To improve the 
theme, one color was replaced by full white.

![imagen](https://user-images.githubusercontent.com/91225771/178082022-f77512c3-5e7d-4ab7-9178-23252e50b86a.png)

# Dwm Theme 
First we have to go to the dwm folder, where all the custom data is located and modify the config.h file. Then, change the next lines:

```C
static const char col_white[]       = "#ffffff";
static const char col_black[]	    = "#000000";

static const char *colors[][3]      = {
	/*               foreground   background    border  */
	[SchemeNorm] = { col_white, col_black, col_gray5 },
	[SchemeSel]  = { col_black, col_white, col_gray5 },
};
```

# St Theme
Now do the same but with the config.h file that is located in the custom st folder. Change those lines:
```C
static const char *colorname[] = {
	/* 8 normal colors */
	"black",
	"#808080",
	"#c9c9c9",
	"#dfdfdf",
	"#ffffff",
	"#707070",
	"#ffffff",
	"#gray90",

	/* 8 bright colors */
	"black",
	"#808080",
	"#c9c9c9",
	"#dfdfdf",
	"#ffffff",
	"#707070",
	"#ffffff",
	"#white",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#cccccc",
	"#555555",
	"#gray90",  /* foreground colour */
	"#000000", /* background colour */
};
```
