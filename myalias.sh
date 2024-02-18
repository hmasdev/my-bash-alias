# alias
alias c='cd'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias psux='ps ux'

# git
alias ga='git add'
alias gc='git commit'
alias gch='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gp='git push'
alias gs='git status'
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
alias jup='python -m jupyter lab'
avenv() {
    if [ -e "$1/bin/activate" ]; then source "$1/bin/activate";
    elif [ -e "$1/Scripts/activate" ]; then source "$1/Scripts/activate";
    else echo "Virtual environment activation script not found."; fi
}

# docker
alias db='docker build'
alias di='docker images'
alias dr='docker run'
alias dc='docker compose'
alias dcu='docker compose up'
alias dcr='docker compose run'

# vscode
alias co='code'
