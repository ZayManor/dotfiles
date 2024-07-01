# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# CLI Prompt
source ~/.git-prompt.sh
setopt PROMPT_SUBST

autoload -U colors && colors
PS1='%n - %t [%~]%f$(__git_ps1): '
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWDIRTYSTATE_COUNT=1
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUNTRACKEDFILES_COUNT=1
GIT_PS1_SHOWUPSTREAM="auto verbose name git"
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_STATESEPARATOR=" "
GIT_PS1_COMPRESSSPARSESTATE=true
GIT_PS1_SHOWCONFLICTSTATE=true
GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_SHOWCOLORHINTS=true