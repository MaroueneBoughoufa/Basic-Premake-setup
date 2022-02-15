#!/bin/sh

PrintHelp()
{
    echo
    echo Enter 'build [action]' where [action] is one of the following:
    echo
    echo   compile           Will generate make file then compile using the make file.
    echo   clean             Remove all binaries and intermediate binaries and project files.
    echo   codelite          Generate CodeLite project files
    echo   gmake2            Generate GNU makefiles for POSIX, MinGW and Cygwin
    echo   vs2005            Generate Visual Studio 2005 project files
    echo   vs2008            Generate Visual Studio 2008 project files
    echo   vs2010            Generate Visual Studio 2010 project files
    echo   vs2012            Generate Visual Studio 2012 project files
    echo   vs2013            Generate Visual Studio 2013 project files
    echo   vs2015            Generate Visual Studio 2015 project files
    echo   vs2017            Generate Visual Studio 2017 project files
    echo   vs2019            Generate Visual Studio 2019 project files
    echo   xcode4            Generate Apple Xcode 4 project files
}

Compile()
{
    ./vendor/premake5-$2 compile
}

if ["$1"=""]; then
    PrintHelp
    exit
elif ["$1"="compile"] -a [["$2"="linux"] -o ["$2"="mac"]]; then
    Compile
    exit
else;
    PrintHelp
fi

if ["$2"="mac"]; then
    ./vendor/premake5-mac $1
    exit
elif ["$2"="linux"]; then
    ./vendor/premake-linux $1
    exit
fi
