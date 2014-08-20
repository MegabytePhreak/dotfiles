#! /usr/bin/env bash

bundle_file=bundles.list

if [[ -f $bundle_file ]]; then 
	rm $bundle_file 
fi

for dir in bundle/*; do 
	if [[ -d $dir ]]; then
		echo $dir
		git --git-dir="$dir/.git" config --get remote.origin.url >> $bundle_file
	fi
done 