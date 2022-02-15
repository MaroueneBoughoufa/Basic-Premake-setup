#include <stdio.h>

#include "log.h"


int main()
{

#ifdef WINDOWS
	Log("Currently on windows.");
#endif
#ifdef LINUX
	Log("Currently on linux");
#endif

	return 0;
}