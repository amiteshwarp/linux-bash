#!/bin/bash
shopt -s expand_aliases
source ~/.bash_aliases
DIR=/srv/www/vhosts/
declare -a FOLDERS=(`cat /vagrant/settings.json | jq -r '.composer_applications[]'`)
for FOLDER in "${FOLDERS[@]}"
do
	cd "$DIR$FOLDER" && pc install
done