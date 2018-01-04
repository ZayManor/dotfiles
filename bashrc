# Displays for Terminal Promt
export PS1="\u - \@ [\w]:\\$ \[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

# Creates JS Kata environment
function kata() {
    cd &&
    cd ~/Google\ Drive/ &&
    git clone https://github.com/aurbina83/KataENV.git "$1" &&
    cd "$1" &&
    yarn install &&
    code . &&
    npm test;
}

# Handles git color prompts
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# Shell integration for Root
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# A few CLI Aliases
alias cat='bat'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias find='fd'
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# This loads NVM
export NVM_DIR="/Users/matthewquinn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
