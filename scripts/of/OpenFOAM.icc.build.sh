#!/bin/bash

#. ~/.seti64
#. ~/OpenFOAM/OpenFOAM-1.7.x/etc/bashrc
COMPILER=icpc

#set COMPILER_OPTIONS="-wd327,654,819,1125,1476,1505,1572 -xSSE3 -O3 -DWM_DP -no-prec-div -fPIC"
OPTIONS="-Wall -Dlinux64"
curr_path=`pwd`
INCLUDE="-I$curr_path/include -I/home/veld/OpenFOAM/ThirdParty-1.7.1/platforms/linux64Icc/openmpi-1.4.1/include"

COMPILER_OPTIONS="$OPTIONS $INCLUDE"

rm -f make.log ./source/*.o
for i in `ls ./source/*.cpp`
do
#    echo "compiling $i"
    echo "$COMPILER $COMPILER_OPTIONS -c $i -o $i.o"
#    "$COMPILER $COMPILER_OPTIONS -с $i -o $i.o"
done

#OBJECTS=`ls ./source/*.o`

#echo "Object files:"
#echo $OBJECTS
