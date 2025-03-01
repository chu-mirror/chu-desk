# System-wide .bashrc file for interactive bash(1) shells.

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
# but only if not SUDOing and have SUDO_PS1 set; then assume smart user.
if ! [ -n "${SUDO_USER}" -a -n "${SUDO_PS1}" ]; then
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

# Commented out, don't overwrite xterm -T "title" -n "icontitle" by default.
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
  PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
  ;;
*)
  ;;
esac

chu_desk_add_dep(bash-completion)m4_dnl
. /usr/share/bash-completion/bash_completion

chu_desk_add_dep(command-not-found)m4_dnl
function command_not_found_handle {
  sp=$PWD # search path from current directory
  cmd=$1  # the searched command
  shift
  while [ "$sp" != "/home" ]; do
    if [ -x "$sp/$CTX_BIN/$cmd" ]; then
      "$sp/$CTX_BIN/$cmd" $@
      unset sp; unset cmd
      return $?
    fi
    sp=`dirname $sp`
  done

  /usr/bin/command-not-found -- "$cmd"
  unset sp; unset cmd
  return $?
}
