#!/bin/sh -e

which emacs 1>/dev/null && exit 0

emacs_src_path=$HOME/reps/emacs

[ -d $emacs_src_path ] || \
  git clone https://github.com/emacs-mirror/emacs.git $emacs_src_path

[ -d $emacs_src_path ] && cd $emacs_src_path && \
  ./configure --with-modules && \
    make && \
    sudo make install
