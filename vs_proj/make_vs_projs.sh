#!/bin/sh

mkdir vs2019/x64  vs2022/x64 -p

PATH=$PATH:/c/Program\ Files/CMake/bin/

rm vs2019/x64/* -rf
cd vs2022/x64
cmake.exe ../../.. -G"Visual Studio 17 2022" $@
cd ../..

#rm vs2015/x86/* -rf
#cd vs2015/x86
#cmake ../../.. -G"Visual Studio 14 2015" $@
#cd ../..
#
#rm vs2015/x64/* -rf
#cd vs2015/x64
#cmake ../../.. -G"Visual Studio 14 2015 Win64" $@
#cd ../..
