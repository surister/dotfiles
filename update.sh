#!/bin/bash

dest=$HOME/dotfiles # Destination path
dotc=$HOME/.config  # Source path, in this case, /.config

#compton
cp $dotc/compton.conf $dest

#i3
cp -r $dotc/i3 $dest

#polybar
cp -r $dotc/polybar $dest
  
