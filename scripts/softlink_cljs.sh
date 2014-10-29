#!/bin/bash

if [ "$1" = "" ] ; then
  echo "usage: $0 <cljs-build-id>"
  exit 1
fi

PUBLIC_DIR="$(dirname $0)/../public"
# echo PUBLIC_DIR=${PUBLIC_DIR}
# mkdir -p $PUBLIC_DIR
cd $PUBLIC_DIR
echo PUBLIC_DIR=`pwd`

for F in ../cljs-out/${1}/* ; do
  echo "Linking: " $(basename ${F}) ;
  rm -rf $(basename ${F}) ;
  ln -s ${F} . ;
done
