#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

########################################################################
# Own
########################################################################

[ -s "$HOME/.bash-git-prompt/gitprompt.sh" ] && source "$HOME/.bash-git-prompt/gitprompt.sh"

[ -s "$HOME/.nano-bash/colors" ] && source "$HOME/.nano-bash/colors"

[ -s "/home/tuxinaut/.scm_breeze/scm_breeze.sh" ] && source "/home/tuxinaut/.scm_breeze/scm_breeze.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

NANOBASHCONF="$HOME/.nano-bash/bash.conf"
if [ -r $NANOBASHCONF ]; then
   source $NANOBASHCONF
else
   echo "WARN: Could not find nano-bash config $NANOBASHCONF"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
