#!/bin/bash

show_help() {
	echo "$0 [down-only / build-only / install-only]"
	echo ""
	echo "down-only      только скачать файл"
	echo "build-only     только построить пакет"
	echo "install-only   только установить пакет"
	echo "clean          очистка всех файлов сборки"
	echo "uninstall      удалить приложение" 
	exit 1
}

if [ "$#" == 0 ]; then
	# INSTALL
	./install_requirements.sh
	./download.sh
	./install.sh
elif [ "$#" == 1 ]; then
	arg=$1
	if [ $arg == "down-only" ]; then
		./download.sh
	elif [ $arg == "build-only" ]; then
		./build.sh
	elif [ $arg == "install-only" ]; then
		./install.sh
	elif [ $arg == "clean" ]; then
		./clean.sh
	elif [ $arg == "uninstall" ]; then
		./uninstall.sh		
	else
		show_help	
	fi
else
	show_help
fi
