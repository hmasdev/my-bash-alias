# alias
alias c='cd'
alias gr='grep'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias mkd='mkdir'
alias psux='ps ux'
alias wh='which'

# git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gd='git diff'
alias gf='git fetch'
alias ginit='git init; git commit --allow-empty -m'
alias gl='git log'
alias gp='git push'
alias gpull='git pull'
alias gs='git status'
alias gt='git tag'
alias gta='git tag -a'
alias gtd='git tag -d'
# github cli
alias ghcs="gh copilot suggest"

# pyenv
alias pg='pyenv global'
alias pl='pyenv local'
alias pv='pyenv versions'

# python
alias py='python'
alias vpy='python -m venv venv'
alias wpy='which python'
alias wpip="which pip"
alias pyt="pytest"
alias jup='python -m jupyter lab'
avenv() {
    if [ -e "$1/bin/activate" ]; then source "$1/bin/activate";
    elif [ -e "$1/Scripts/activate" ]; then source "$1/Scripts/activate";
    else echo "Virtual environment activation script not found."; fi
}
alias vpya='python -m venv venv ; avenv venv'

# npm
alias npmi='npm install'
alias npmt='npm test'
alias npmr='npm run'

# docker
alias db='docker build'
alias di='docker images'
alias diq='docker images -q'
alias dr='docker run'
alias dc='docker compose'
alias dcu='docker compose up'
alias dcr='docker compose run'

# vscode
alias co='code'
