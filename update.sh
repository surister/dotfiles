#!/bin/bash

dest=$HOME/dotfiles # Destination path
dotc=$HOME/.config  # Source path, in this case, /.config

#compton
cp $dotc/compton.conf $dest
cp -r $dotc/custom-compton $dest

#i3
cp -r $dotc/i3 $dest

#polybar
cp -r $dotc/polybar $dest

#audioswap
cp $HOME/audioswap.sh $dest  
