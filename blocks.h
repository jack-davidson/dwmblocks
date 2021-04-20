//#define LT0
#define DT0

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/* Icon */ /*Command*/						/*Update Interval*/	/*Update Signal*/
#ifdef DT0
	{" vol: ", "amixer -c 2 get PCM | awk -F'[][]' 'END{ print $2 }'",	1,		0},
#endif
	{"mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
	{"", "date '+%b %d (%a) %I:%M %p '",					5,		0}
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
