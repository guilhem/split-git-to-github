#! /bin/sh -e

find . -mindepth 1 -maxdepth 1 -type d -not -name '.*' -printf "%P\n" | parallel ./split-dir.sh {}
