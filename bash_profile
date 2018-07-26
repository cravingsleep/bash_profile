# lets make this shit colourful
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# trees > ls bro
alias t="tree"
alias t1="tree -L 1"
alias t2="tree -L 2"

# down with verbosity
alias gs="git status -sb"
alias m="mvn clean install"

# it's dockers all the way down
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

# need to record what I did, like momento
alias did="vim \"+ normal G $\" ~/did.md"
alias vdid="mdless ~/did.md"

# plenty of nodes
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
