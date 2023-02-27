#!/bin/bash

config_dir=config
list=~/$config_dir/.list

while read line
do
	link_name=$(echo $line | awk -F ' -> ' '{printf $1}')
	target=$(echo $line | awk -F ' -> ' '{printf $2}')
 	ln -s ~/$config_dir/$target ~/$link_name
done < $list
