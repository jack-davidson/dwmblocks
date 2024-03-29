#define ALSA_DEVICE "Master"

#ifdef lt0
#define ALSA_DEVICE "Master"
#define iwd
#define battery
#define backlight
#endif

#ifdef dt0
#undef ALSA_DEVICE
#define ALSA_DEVICE "PCM"
#endif

#ifndef SCRIPT
#define SCRIPT
#endif

/* Modify this file to change what commands output to your statusbar, and recompile using the make command. */
static const Block blocks[] = {
	/* Script */			/*Update Interval*/	/*Update Signal*/
	{SCRIPT("vol.sh " ALSA_DEVICE),	1,			44},
#ifdef backlight
	{SCRIPT("backlight.sh"),	1,			45},
#endif
#ifdef iwd
	{SCRIPT("iwd.sh"),		10,			0},
#endif
#ifdef battery
	{SCRIPT("bat.sh"),		5,			0},
#endif
	{SCRIPT("mem.sh"),		10,			0},
	{SCRIPT("date.sh"),		1,			0}
};

/* sets delimeter between status commands. NULL character ('\0') means no delimeter. */
static char delim[] = "   ";
static unsigned int delimLen = 3;
