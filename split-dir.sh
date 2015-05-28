#! /bin/sh -e

. conf

dir=$1
git subtree split -P $dir -b $dir
hub create $ORG/$dir
git remote add $dir git@github.com:$ORG/$dir.git
git push $dir $dir:master
rm -r $dir
