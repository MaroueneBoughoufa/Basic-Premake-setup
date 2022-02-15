#pragma once

#define Log(str, ...) LogInternal(__FILE__, __LINE__, str, __VA_ARGS__)

void LogInternal(const char* file, int line, const char* format, ...);