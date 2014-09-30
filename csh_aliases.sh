#-----------------------------------------------------------------------------
#   Default user .aliases

alias a		'alias \!:*'
alias cd	'cd \!:*; echo $cwd'
alias pwd	'echo $cwd'
alias ls        'ls -F'
alias la        'ls -ACF -h --color=auto'
alias lla	'ls  -lFA -h --color=auto'
alias ll	'ls  -lF -h --color=auto'
alias rm	'rm '
alias cp	'cp -r'
alias j		'jobs -l'
alias h		'history'
alias grep      'grep --color=auto'
alias src	'source ~/.cshrc'
alias v         'vncserver -depth 24 -geometry \!:1x\!:2 '
alias vv	'vncserver -depth 24 -geometry 1920x1000'
alias vk        'vncserver -kill :\!:1'
alias vps 	'find ~/.vnc/ -name "*.pid"'

alias dua       'du --max-depth=0 -ahc * && echo " "'
alias dus       'du --max-depth=0 -kc -a * | sort && echo " " '
alias duf 	   'du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'

alias em     'emacs \!:* &'
alias gedit     'gedit \!:* &'
alias wv        'wv \!:* &'

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


if (( -x /usr/bin/git) || ( -x /bin/git))  then
  # Git is installed so define tcsh completions for it.
  # List of known git subcommands
  # This is a hard-coded list to avoid calling 'git help' at startup.
  set __git_cmd_names = (add bisect blame branch checkout clone commit config \
  diff diff-files difftool fetch grep gui init log merge mv pull push \
  rebase reset rm show shortlog stash status tag)

  alias __git_aliases 'git config --get-regexp "alias.*" | sed -n "s,alias\.\([^ ]*\).*,\1,p"'
  alias __git_branches 'git for-each-ref �Cformat="%(refname)" refs/heads refs/remotes | sed -e s,refs/remotes/,, | sed -e s,refs/heads/,,'
  alias __git_origin_branches 'git for-each-ref �Cformat="%(refname)" refs/remotes/origin | grep -v HEAD | sed -e s,refs/remotes/origin/,,'

  # Define the completions (see the tcsh man page).
  complete git \
  'p/1/`__git_aliases | xargs echo $__git_cmd_names`/' \
  "n/help/($__git_cmd_names)/" \
  'n/branch/`__git_branches | xargs echo -m -d`/' \
  'n/config/(�Cglobal �Cget-regexp �Clist)/' \
  'n/diff/`__git_branches | xargs echo �Ccheck �Cstaged �Cstat -- *`/' \
  'n/difftool/`__git_branches | xargs echo �Cno-prompt �Cstaged -- *`/' \
  'n/fetch/`git remote`/' \
  'n/merge/`__git_branches`/' \
  'n/log/`__git_branches | xargs echo -- �Cname-only �Cname-status �Creverse �Ccommitter= �Cno-color �Crelative �Cignore-space-change �Cignore-space-at-eol �Cformat=medium �Cformat=full �Cformat=fuller`/' \
  'n/stash/(apply list save pop clear)/' \
  'n/push/`git remote`/' \
  'N/push/`__git_origin_branches`/' \
  'n/pull/`git remote | xargs echo �Crebase`/' \
  'n/�Crebase/`git remote`/' \
  'N/�Crebase/`__git_origin_branches`/' \
  'N/pull/`__git_origin_branches`/' \
  'n/rebase/`__git_branches | xargs echo �Ccontinue �Cabort �Conto �Cskip �Cinteractive`/' \
  'N/rebase/`__git_branches`/' \
  'n/remote/(show add rm prune update)/' \
  'N/remote/`git remote`/' \
  'n/checkout/`__git_branches | xargs echo -b �C`/' \
  'N/-b/`__git_branches`/'
endif

############################################################
#### My tcsh configurations
############################################################


alias xkonsole  'bsub -R \"rhel50\" -m lc-irv-1481 -q irv-Ilib konsole &'

alias xicm  'projicm BLDM16XP -projectdisk libdev_sram_ws -workdir "BLDM16XP/M16XP" -scratchdisk libdev_sram_scratch &'

alias sprun './spicerunner run --run-crit --toolver ricks --clean-all'
alias spview './spicerunner view --toolver ricks'

