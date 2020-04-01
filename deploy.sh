#!/bin/bash

[ ! -d ~/bin ] && mkdir ~/bin
cp bin/* ~/bin/

for fn in .bashrc .vimrc
do
  cp $fn ~/
done

