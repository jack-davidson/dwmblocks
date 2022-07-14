#ifdef lt0
#define ALSA_DEVICE "Master"
#endif

#ifdef dt0
#define ALSA_DEVICE "PCM"
#endif

#ifndef SCRIPT
#define SCRIPT
#endif

/* Modify this file to change what commands output to your statusbar, and recompile using the make command. */
static const Block blocks[] = {
	/* Script */			/*Update Interval*/	/*Update Signal*/
	{SCRIPT("vol.sh " ALSA_DEVICE),	1,			0},
#ifdef lt0
	{SCRIPT("wl.sh"),		10,			0},
	{SCRIPT("bat.sh"),		60,			0},
#endif
	{SCRIPT("mem.sh"),		10,			0},
	{SCRIPT("date.sh"),		1,			0}
};

/* sets delimeter between status commands. NULL character ('\0') means no delimeter. */
static char delim[] = " | ";
static unsigned int delimLen = 5;
