export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export DOCKER_HOST=unix:///var/run/docker.sock
export DOCKER_IP=127.0.0.1

alias t="tree"
alias t1="tree -L 1"
alias t2="tree -L 2"

alias gs="git status"

alias dps="docker ps"
dstop() { docker stop $(docker ps -aq); }
drm()   { docker rm   $(docker ps -aq); }

dup() {
	think=$(ls | grep $1)
	docker-compose -f $think up -d
}

dodown() {
	think=$(ls | grep $1)
	docker-compose -f $think down
}
