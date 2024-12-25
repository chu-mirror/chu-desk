#!/bin/sh -e

chu_desk_add_dep(cabal-install)m4_dnl

cabal update
cabal install Agda
cd "$REPOSITORY_HOME"
git clone --recurse-submodules git@github.com:chu-mirror/agda.git "$REPOSITORY_HOME/agda"
