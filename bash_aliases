#https://robotmoon.com/256-colors
COLOR_DEF=$'\e[0m'
COLOR_USR=$'\e[38;5;243m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_GIT=$'\e[38;5;39m'
COLOR_FOL=$'\e[38;5;214m'
COLOR_BRN=$'\e[38;5;202m'

parse_git_branch() {
    [ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ] && echo "($(git rev-parse --abbrev-ref HEAD))"
}

export PS1='🦉${COLOR_USR}\u${COLOR_GIT}@${COLOR_DEF}\t🚀${COLOR_FOL}\w${COLOR_BRN}$(parse_git_branch)${COLOR_DEF}\n🖍️'

#https://github.com/laravel/homestead/blob/main/resources/aliases
alias ..="cd .."
alias ...="cd ../.."
alias c='clear'
alias h='cd ~'
alias s='sudo su'

alias v='f(){ cd /srv/www/vhosts/"$@"; unset -f f; }; f'
alias pc='f(){ find . -maxdepth 3 -iname "composer.json" -exec dirname {} \; | xargs -I DIREC --max-procs=5 bash -c "echo -e \"\e[38;5;214m\"$@\" DIREC\e[0m\" && sudo composer \"$@\" -d DIREC" ; unset -f f; }; f'

alias codecept='vendor/bin/codecept'
alias phpspec='vendor/bin/phpspec'
alias phpunit='vendor/bin/phpunit'
alias serve=serve-laravel

alias xoff='sudo phpdismod -s cli xdebug'
alias xon='sudo phpenmod -s cli xdebug'

alias nrd="npm run dev"
alias nrw="npm run watch"
alias nrwp="npm run watch-poll"
alias nrh="npm run hot"
alias nrp="npm run production"

alias yrd="yarn run dev"
alias yrw="yarn run watch"
alias yrwp="yarn run watch-poll"
alias yrh="yarn run hot"
alias yrp="yarn run production"

function sphp() {
    sudo update-alternatives --set php /usr/bin/php"$@"
    sudo update-alternatives --set php-config /usr/bin/php-config"$@"
    sudo update-alternatives --set phpize /usr/bin/phpize"$@"
}

function xphp() {
    (php -m | grep -q xdebug)
    if [[ $? -eq 0 ]]
    then
        XDEBUG_ENABLED=true
    else
        XDEBUG_ENABLED=false
    fi

    if ! $XDEBUG_ENABLED; then xon; fi

    HOST_IP=$(last --limit=1 | grep -oP '\d+(\.\d+){3}')

    php \
        -dxdebug.client_host=${HOST_IP} \
        -dxdebug.start_with_request=yes \
        "$@"

    if ! $XDEBUG_ENABLED; then xoff; fi
}
