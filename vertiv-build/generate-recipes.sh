#!/bin/sh
#
# Script generates recipe makefiles based on the packages built by obsidian-base, uploaded to mirror server, and added to the package-list file

for package in $(cat package-list); do 
	recipe=$(echo $package | cut -f1 -d"_")
	
	# Clean previous generated recipes
	rm -f ../rules/$recipe.mk
	
	# Use template make file and add specific package information
	cp template.mk ../rules/$recipe.mk
	sed -i "s|NAME|${recipe^^}|g" ../rules/$recipe.mk
	sed -i "s|FILE|$package|g" ../rules/$recipe.mk
	
	# Add package to image if not already present
	if [ $(cat ../platform/broadcom/one-image.mk | grep ${recipe^^} | wc -l) -gt 0 ]; then
		echo "Already added to one-image.mk"
	else
		echo "\$(SONIC_ONE_IMAGE)_INSTALLS += \$(${recipe^^})" >> ../platform/broadcom/one-image.mk
	fi
done
