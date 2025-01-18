#!/bin/sh -e

cd $REPOSITORY_HOME
[ -d pandoc-latex-template ] || git clone https://github.com/Wandmalfarbe/pandoc-latex-template.git
cd pandoc-latex-template
[ -d $HOME/.pandoc/templates ] || mkdir -p $HOME/.pandoc/templates
cp template-multi-file/* -t $HOME/.pandoc/templates
