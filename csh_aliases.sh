#-----------------------------------------------------------------------------
#   Default user .aliases

alias a		'alias \!:*'
alias cd	'cd \!:*; echo $cwd'
alias pwd	'echo $cwd'
alias ls    'ls -F --color=tty'
alias la    'ls -aCFh --color=tty'
alias ll	'ls  -lF --color=tty'
alias lla	'ls  -lFa --color=tty'
alias rm	'rm -r'
alias cp	'cp -r'
alias j		'jobs -l'
alias h		'history'
alias grep  'grep --color=auto'
alias src	'source ~/.cshrc'
alias v         'vncserver -depth 24 -geometry \!:1x\!:2 '
alias vv	'vncserver -depth 24 -geometry 1920x1000'
alias vk        'vncserver -kill :\!:1'
alias vps 	'find ~/.vnc/ -name "*.pid"'

alias dua       'du --max-depth=0 -ahc * && echo " "'
alias dus       'du --max-depth=0 -kc -a * | sort && echo " " '
alias duf 	   'du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'

alias emacs     'emacs-x -nw \!:* '
alias gedit     'gedit \!:* &'

alias ssh       'ssh -X -i ~/.ssh/id_rsa'
alias scp       'scp -i ~/.ssh/id_rsa'

if ( $?tcsh ) then
	bindkey '\e[1~' beginning-of-line      # Home
	bindkey '\e[3~' delete-char            # Delete
	bindkey '\e[4~' end-of-line            # End
	bindkey "^W" backward-delete-word      # Delete
	bindkey -k up history-search-backward  # PageUp
	bindkey -k down history-search-forward # PageDown
endif