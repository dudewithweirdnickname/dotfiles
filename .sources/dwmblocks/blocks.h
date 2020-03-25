//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	//Icon	Command						Update Interval		Update Signal /
	{"RAM: ",	"free -h | awk '/^Mem:/ {print $3}'",	30,			0},  	// ram
	{"",		"status-vol.sh",			1,			10},	// volume
	{"X: ",		"xbacklight -get | cut -b 1-2",		1,			11},	// brightness
	{"CPU: ",	"sensors | awk '/Core 0/ {print $3}'",	5,			0},	// cpu temp
	{"LOAD: ",	"cat /proc/loadavg | awk '{print $1}'",	5,			0},	// cpu load
	{"BAT0: ",	"status-bat0.sh",			5,			9},	// BAT0
	{"BAT1: ",	"status-bat1.sh",			5,			9},	// BAT1
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
