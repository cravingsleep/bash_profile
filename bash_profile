export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias t="tree"
alias t1="tree -L 1"
alias t2="tree -L 2"

alias gs="git status -sb"

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

alias did="vim \"+ normal G $\" ~/did.md"
alias vdid="mdless ~/did.md"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
