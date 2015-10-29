#!/bin/bash

DIR=$(cd "$(dirname "$BASH_SOURCE")"; pwd)

for file in '.gitconfig' '.bash_profile'
do
	ln -fs $DIR/$file ~/$file
done

source ~/.bash_profile
