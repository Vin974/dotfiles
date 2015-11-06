#!/bin/bash

DIR=$(cd "$(dirname "$BASH_SOURCE")"; pwd)

for file in '.gitconfig' '.bash_profile' '.vimrc'
do
	ln -fs $DIR/$file ~/$file
done

source ~/.bash_profile
