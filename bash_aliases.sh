#!/bin/bash
#echo "In aliases.sh"

############################################################
########## Simpe aliases
############################################################
alias c='clear'
alias s='source ~/.bashrc'
alias h='history'
alias j='jobs -l'


############################################################
########## Functions
############################################################
#foo() { ssh "$@" ;}
foo_ssh() { ssh -i ~/.ssh/id_rsa_trds -x root@"$@";}


############################################################
########## Terminal Only Configuration
############################################################

alias ls='ls  --color=tty'
alias la='ls -aChF --color=tty'
alias lla='ls  -alhF --color=tty'
alias lls='ls --sort=size -lhFr'
alias l.='ls -d .* --color=auto'

alias sshpa=foo_ssh

############################################################
########## Terminal Only Configuration
############################################################
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

############################################################
########## Terminal Only Configuration
############################################################
alias dua='du --max-depth=0 -ahc * && echo " "'
alias dus='du --max-depth=0 -kc -a * | sort && echo " " '
alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'

############################################################
########## Terminal Only Configuration
############################################################
function vnc_start_server(){
    tightvncserver -depth 16 -geometry $1x$2
}
function vnc_kill_server(){
    tightvncserver -kill :$1
    }

alias v=vnc_server_server
alias vk=vnc_kill_server
alias vv='tightvncserver -depth 16 -geometry 1920x1000'
#alias vk='tightvncserver -kill :\!:1'
alias vps='find ~/.vnc/ -name "*.pid"'

alias tvoff='sudo /opt/vc/bin/tvservice -p; sudo /opt/vc/bin/tvservice -o'
alias tvon='/opt/vc/bin/tvservice -p ; sudo chvt 6; sudo chvt 7'
