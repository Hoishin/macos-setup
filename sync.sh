#!/usr/bin/env bash

set -e

cd $(dirname $0)/home

for i in $(find . -type f | cut -c 3-)
do
	mkdir -p $(dirname $HOME/$i)
	rm -f $HOME/$i
	ln -s $(pwd -P)/$i $(dirname $HOME/$i)/
done

