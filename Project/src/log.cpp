#include <stdio.h>
#include <stdarg.h>

#include "log.h"

void LogInternal(const char* file, int line, const char* format, ...) 
{
	printf("'%s' Line: %d\n", file, line);
	printf("\t");
	va_list argptr;
	va_start(argptr, format);
	vprintf(format, argptr);
	va_end(argptr);
}

