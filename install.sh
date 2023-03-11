#!/bin/bash

config_dir=config-install
list=~/$config_dir/.list

function create_dir() {
  mkdir -p -- $(dirname "$1")
}

# Before to read lines of list expand home directory by replacing it
# $HOME is equals to '/home/{username}' so the separator pattern will be
# changed by another than '/'. i.e: '|', '#'
sed "s|~|$HOME|g" $list | while read line
do
  target=$(echo $line | awk -F ' -> ' '{printf $2}')
  link_name=$(echo $line | awk -F ' -> ' '{printf $1}')

  create_dir $link_name
  ln -s "$HOME/$config_dir/$target" "$link_name" &> /dev/null

	if [ $? ]
	then
		echo "Link created successful ($link_name)"
	fi
done
