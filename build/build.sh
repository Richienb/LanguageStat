#!/bin/sh

TMP_FOLDER="./tmp"
BIN_FOLDER="./bin"
SRC_FOLDER="./src"
BIN_NAME="LanguageStat"
CMAKE_LISTS_PATH="../"

clean_all()
{
	sh clean.sh
}

build_all()
{
	mkdir $TMP_FOLDER $BIN_FOLDER
	cd $TMP_FOLDER
	cmake $CMAKE_LISTS_PATH -DLOG_STATUS="ENABLED"
	make
	cd ../		
}

move_bin()
{
	mv $TMP_FOLDER/$BIN_NAME $BIN_FOLDER
}

main()
{
	clean_all
	build_all
	move_bin
}

main