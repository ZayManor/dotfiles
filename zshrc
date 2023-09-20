source ~/.git-prompt.sh
setopt PROMPT_SUBST

# High Maintenance Prompt
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

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias dev="cd /Users/zaymanor/dev"
alias play="cd /Users/zaymanor/dev/posting-app-playwright-main"
alias dot="cd /Users/zaymanor/dev/dotfiles"
alias ls="ls --color=always"
