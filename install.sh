#! /bin/bash

res=$(xrandr | grep "*" | awk '{print $1}' | awk -Fx '{print $2}')

if [$res == "768"] || [$res == "720"];then
	sed -i "s/pixelsize=18/pixelsize=10/g" config.h
fi

sudo make -s install clean

if [$res == "768"] || [$res == "720"];then
	sed -i "s/pixelsize=10/pixelsize=18/g" config.h
fi
