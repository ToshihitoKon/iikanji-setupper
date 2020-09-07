#!/usr/bin/env bash
if [ ! -e ~/.bashrc ]; then
    echo "source $(pwd)/.isucon-benri.bashrc"
    echo installed
    exit
fi

isuconbash=`cat ~/.bashrc | grep isucon-benri`
if [ -z "${isuconbash}" ]; then
    echo "source $(pwd)/isucon-benri.bashrc" >> ~/.bashrc
    echo install comoplete
fi
