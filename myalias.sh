# alias
alias c='cd'
alias gr='grep'
alias k9='kill -9'
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
alias gcm='git commit -m'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gd='git diff'
alias gf='git fetch'
alias ginit='git init; git commit --allow-empty -m'
alias gl='git log'
alias gp='git push'
alias gpu='git push -u origin'
alias gpull='git pull'
alias gs='git status'
alias gt='git tag'
alias gta='git tag -a'
alias gtd='git tag -d'

# pyenv
alias pg='pyenv global'
alias pl='pyenv local'
alias pv='pyenv versions'

# python
alias py='python'
alias vpy='python -m venv .venv'
alias wpy='which python'
alias wpip="which pip"
alias pyt="pytest"
alias jup='python -m jupyter lab'
avenv() {
    local env_path=${1:-./.venv}  # Default to './.venv' if no argument is provided
    if [ -e "$env_path/bin/activate" ]; then source "$env_path/bin/activate";
    elif [ -e "$env_path/Scripts/activate" ]; then source "$env_path/Scripts/activate";
    else echo "Virtual environment activation script not found."; fi
}
alias vpya='python -m venv .venv --upgrade-deps ; avenv .venv'
# python:uv
alias upip='uv pip'
alias uva='uv python'
alias uvs='uv sync'
alias uvr='uv run'

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
