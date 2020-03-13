# ENV VARS
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin:$HOME/.poetry/bin"

# Displays for Terminal Promt
export PS1="\u - \@ [\w]:\\$ \[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

# Handles git color prompts
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# Shell integration for Root
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Fuzzy match bindings
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Pyenv configs
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
