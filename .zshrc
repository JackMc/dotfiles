# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/jack/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Hub is a wrapper around Git for GitHub.
if command -v hub > /dev/null 2>&1; then
    alias git=hub
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt notify
unsetopt appendhistory autocd beep extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

PROMPT='[%n@%m %~%b] %# '
if [ -z "$TMUX" ]; then export TERM='screen-256color'; fi

if [ "$TMUX" ]; then alias emacs='emacs -nw'; fi 


export EDITOR='vim'

export PATH=$PATH

gempath=$(ruby -rubygems -e "puts Gem.user_dir")/bin

if [ -d $gempath ]; then
    export PATH=$PATH:$gempath
fi

android_path=/opt/android-studio/sdk/platform-tools

if [ -d $android_path ]; then
    export PATH=$PATH:$android_path
fi

if [ -e /usr/share/doc/pkgfile/command-not-found.zsh ]; then
    source /usr/share/doc/pkgfile/command-not-found.zsh
fi

kde5_path=/opt/kf5/bin

if [ -d $kde5_path ]; then
    export PATH=$PATH:$kde5_path
fi

# An alias so that GitHub and the school servers are updated when I push my schoolwork
alias school_push="git push origin master:master; git push github origin master:master"

# For Android builds, cache.
export USE_CCACHE=1

export OAUTH_TOKEN="fc09182b8d37b17cc8735f8bfd9938817a1fcf93"

export PATH=$HOME/bin:$PATH

export USE_CCACHE=1

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
