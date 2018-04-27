#! /bin/sh
## Find *.MP4 movies under the given dir,
## move QT MOOV atom to start for pseudo-streaming

find $@ -xdev -iname '[^_]*.m{p4,4v}' \
  -execdir qt-faststart '{}' '_{}' \;
