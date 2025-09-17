#!/bin/sh

cd ~/.vim/pack

[ -d tpope ] || mkdir -p tpope/start
cd tpope/start
[ -d commentary ] || git clone https://tpope.io/vim/commentary.git

cd ~/.vim/pack
[ -d kana ] || mkdir -p kana/start
cd kana/start
[ -d vim-textobj-user ] || git clone https://github.com/kana/vim-textobj-user.git
[ -d vim-textobj-entire ] || git clone https://github.com/kana/vim-textobj-entire.git
