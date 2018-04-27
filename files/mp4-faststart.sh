#! /bin/sh
## Find *.MP4 movies under the given dir,
## move QT MOOV atom to start for pseudo-streaming

find $@ -xdev \
  \( -iname '[^_]*.mp4' -o -iname '[^_]*.m4v' \) \
  -execdir qt-faststart '{}' tmp \; \
  -execdir touch -r '{}' tmp \; \
  -execdir mv tmp '_{}' \; \
  -delete
