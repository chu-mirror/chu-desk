[ -f "$HOME/.keys" ] && . "$HOME/.keys"

REPOSITORY_HOME="$HOME/reps"
export REPOSITORY_HOME

[ -d "$REPOSITORY_HOME" ] || mkdir -p "$REPOSITORY_HOME"

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

m4_dnl I prefer vis than vim
chu_desk_add_dep(vis)m4_dnl
export EDITOR=vi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi
