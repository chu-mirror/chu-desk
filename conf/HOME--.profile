[ -f "$HOME/.keys" ] && . "$HOME/.keys"

REPOSITORY_HOME="$HOME/reps"
export REPOSITORY_HOME

[ -d "$REPOSITORY_HOME" ] || mkdir -p "$REPOSITORY_HOME"

PATH="$HOME/.local/bin:$PATH"

chu_desk_add_dep(ruby)m4_dnl
chu_desk_add_dep(ruby-dev)m4_dnl
GEM_HOME="$HOME/.gems"
PATH="$GEM_HOME/bin:$PATH"
export GEM_HOME

chu_desk_add_dep(cabal-install)m4_dnl
CABAL_HOME="$HOME/.cabal"
PATH="$CABAL_HOME/bin:$PATH"
export CABAL_HOME

chu_desk_add_custom_dep(cargo)m4_dnl
CARGO_HOME="$HOME/.cargo"
PATH="$CARGO_HOME/bin:$PATH"
export CARGO_HOEM

chu_desk_add_dep(vim)m4_dnl
chu_desk_add_custom_dep(vim-addons)m4_dnl
export EDITOR=vi

m4_dnl TeX
chu_desk_add_dep(texlive-full)m4_dnl
chu_desk_add_dep(pandoc)m4_dnl
chu_desk_add_dep(mupdf)m4_dnl

m4_dnl Font
chu_desk_add_dep(fontconfig)m4_dnl
chu_desk_add_dep(fonts-noto-cjk)m4_dnl

chu_desk_add_custom_dep(pandoc-latex-template)m4_dnl
pdfmarkdown () {
    pandoc $1 -o `basename $1 .md`.pdf --from markdown+tex_math_dollars \
        --listings --pdf-engine "xelatex" -V CJKmainfont="Noto Serif CJK SC"
}

chu_desk_add_dep(pkg-config)m4_dnl
chu_desk_add_dep(sqlite3)m4_dnl
chu_desk_add_dep(libsqlite3-dev)m4_dnl
chu_desk_add_dep(libgtk-3-dev)m4_dnl
chu_desk_add_dep(libtree-sitter-dev)m4_dnl
chu_desk_add_dep(libxpm-dev)m4_dnl
chu_desk_add_dep(libgif-dev)m4_dnl
chu_desk_add_dep(libgnutls28-dev)m4_dnl

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi
