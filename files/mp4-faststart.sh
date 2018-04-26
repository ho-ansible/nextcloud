#! /bin/sh
## Find *.MP4 movies under the given dir,
## move QT MOOV atom to start for pseudo-streaming

find $@ -xdev -iname '[^_]*.mp4' \
  -execdir qt-faststart '{}' '_{}' \;
