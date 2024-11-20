# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

[ -f "$HOME/.keys" ] && . "$HOME/.keys"

chu_desk_add_dep(ruby)m4_dnl
chu_desk_add_dep(ruby-dev)m4_dnl
GEM_HOME="$HOME/.gems"
PATH="$GEM_HOME/bin:$PATH"
export GEM_HOME

chu_desk_add_dep(cabal-install)m4_dnl
CABAL_HOME="$HOME/.cabal"
PATH="$CABAL_HOME/bin:$PATH"
export CABAL_HOME

CARGO_HOME="$HOME/.cargo"
PATH="$CARGO_HOME/bin:$PATH"
export CARGO_HOEM

export EDITOR=vi

PATH="$HOME/.elan/bin:$PATH"

