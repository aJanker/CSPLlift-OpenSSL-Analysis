#!/bin/bash

./cleanAST.sh
./config no-asm
make clean
sed -i.bak s+^CC=.*+"CC= $(pwd)/$1"+g Makefile
make
