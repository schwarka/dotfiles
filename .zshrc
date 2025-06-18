alias cat="bat"

alias ga="git add"
alias gap="git add -p"
alias gcmsg="git commit -m"
alias gl="git pull"
alias gp="git push"
alias gs="git status"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gd="git diff"
alias glog="git log --oneline --decorate --graph --all"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(mise activate zsh)"
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
