#https://robotmoon.com/256-colors
alias ll='ls -la'
alias ..="cd .."
alias ...="cd ../.."
alias c='clear'
alias h='cd ~'
alias s='sudo su'
alias dc='docker compose -f /Users/aprasad/vhosts/docker-env/docker-compose.yml -f /Users/aprasad/vhosts/docker-env/docker-compose.override.yml'
alias du='dc up -d'
alias dd='dc down'
alias php='dc exec core /usr/local/bin/php'
alias composer='dc exec core /usr/local/bin/composer'
alias phpcs='dc exec core /var/www/Entrata/Applications/ClientAdmin/vendor/bin/phpcs'
alias phpcbf='dc exec core /var/www/Entrata/Applications/ClientAdmin/vendor/bin/phpcbf'
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'
alias ga='find /Users/aprasad/vhosts -mindepth 1 -maxdepth 2 -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull -q" \;'
function dl() {
 dc exec -it "$@" /bin/bash
}
export PATH="\$PATH:/opt/homebrew/bin:opt/homebrew/Cellar/act/0.2.28/bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/aprasad/vhosts/istio-1.14.1/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/opt/homebrew/opt/libtool/libexec/gnubin:/opt/homebrew/opt/coreutils/libexec/gnubin"
