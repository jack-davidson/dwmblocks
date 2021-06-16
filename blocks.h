/* #define DT0 */
#define LT0

#ifdef LT0
#define ALSA_DEVICE "Master"
#endif

#ifdef DT0
#define ALSA_DEVICE "PCM"
#endif

/* Modify this file to change what commands output to your statusbar, and recompile using the make command. */
static const Block blocks[] = {
	/* Icon */ /*Command*/						/*Update Interval*/	/*Update Signal*/
	{" ", "vol " ALSA_DEVICE,						1,		0},
#ifdef LT0
	{" : ", "echo $(cat /sys/class/power_supply/BAT0/capacity)%, $(cat /sys/class/power_supply/BAT1/capacity)%", 30, 0},
#endif
	{": ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
	{"", "date '+%b %d (%a) %I:%M %p '",					5,		0}
};

/* sets delimeter between status commands. NULL character ('\0') means no delimeter. */
static char delim[] = " / ";
static unsigned int delimLen = 5;
