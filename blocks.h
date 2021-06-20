#ifdef lt0
#define ALSA_DEVICE "Master"
#endif

#ifdef dt0
#define ALSA_DEVICE "PCM"
#endif

/* Modify this file to change what commands output to your statusbar, and recompile using the make command. */
static const Block blocks[] = {
	/*Command*/							/*Update Interval*/	/*Update Signal*/
	{SCRIPT("vol.sh " ALSA_DEVICE),	1,			0},
	{SCRIPT("mpd.sh"),		1,			0},
#ifdef lt0
	{SCRIPT("bat.sh"),		30,			0},
	{SCRIPT("wl.sh"),		30,			0},
#endif
	{SCRIPT("mem.sh"),		30,			0},
	{SCRIPT("date.sh"),		5,			0}
};

/* sets delimeter between status commands. NULL character ('\0') means no delimeter. */
static char delim[] = " / ";
static unsigned int delimLen = 5;
