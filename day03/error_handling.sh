#!/bin/bash

create_directory(){
	mkdir demo
}

if ! create_directory; then
	echo "File already exists"
	exit 1
fi

echo "Couldn't handle error"
