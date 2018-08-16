#!/usr/bin/env bash

cd $(dirname $0)/home

for i in $(find . -type f)
do
	mkdir -p ~/$(dirname $i)
	rm ~/$i
	ln $i ~/$i
done
unset i
