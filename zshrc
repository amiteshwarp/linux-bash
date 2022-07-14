#https://robotmoon.com/256-colors
alias ll='ls -la'

COLOR_DEF=$'\e[0m'
COLOR_USR=$'\e[38;5;243m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_GIT=$'\e[38;5;39m'
COLOR_FOL=$'\e[38;5;214m'
COLOR_BRN=$'\e[38;5;202m'

function parse_git_branch() {
    git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

#https://github.com/laravel/homestead/blob/main/resources/aliases
alias ..="cd .."
alias ...="cd ../.."
alias c='clear'
alias h='cd ~'
alias s='sudo su'

alias v='f(){ cd /Users/aprasad/vhosts/"$@"; unset -f f; }; f'
alias pc='f(){ find . -maxdepth 3 -iname "composer.json" -exec dirname {} \; | xargs -I DIREC --max-procs=5 bash -c "echo -e \"\e[38;5;214m\"$@\" DIREC\e[0m\" && sudo composer \"$@\" -d DIREC" ; unset -f f; }; f'

alias nrd="npm run dev"
alias nrw="npm run watch"
alias nrwp="npm run watch-poll"
alias nrh="npm run hot"
alias nrp="npm run production"

export PATH=$PATH:/opt/homebrew/bin:opt/homebrew/Cellar/act/0.2.28/bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/aprasad/vhosts/istio-1.14.1/bin
