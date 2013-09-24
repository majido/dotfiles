# Git prompt may be slow for large repositories.
# to turn off run "git config user.prompt false" on large repos

function git_ps(){
  echo "$(sh /Users/majidv/.git-ps1.sh)"
}


# custom color bash prompt via kirsle.net/wizards/ps1.html
PS1='\[$(tput bold)\]\[$(tput setaf 2)\]\W\[$(tput setaf 3)\] => $(git_ps)\[$(tput sgr0)\]'
#PS1='\W$(git_ps) \$'

#Git autocomplete - moved to /usr/etc/bash-completion.d
# source ~/.git-completion.bash

#Bash completion
[[ $PS1 && -f /usr/local/etc/bash_completion ]] && \
      . /usr/local/etc/bash_completion



#Bind up and down arrow to search command history
bind '"[A":history-search-backward'
bind '"[B":history-search-forward'




#Node setup
export NODE_PATH="/usr/local/lib/node_modules:/Users/majidv/.npm"


#NPM setup
export PATH=$PATH:/usr/local/share/npm/bin

#GRAILS
export GRAILS_HOME=/usr/local/Cellar/grails/2.0.4/libexec

alias ls="ls -G"
alias less="less -R"
alias grep="grep --color=always"
alias diff="colordiff" #need to have colordiff
## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
#
alias now='date +%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias header='curl -L -I'

