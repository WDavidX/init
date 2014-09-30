############################################################
#### My tcsh configurations
############################################################

#-----------------------------------------------------------------------------
#   The umask sets the access permissions for any new files you create.
#   Common umasks:
#     077 - our default - removes all permissions except the owner's
#     022 - the standard unix default - removes write permissions for
#           everyone other than the owner.  (Allows others to read most
#           of your files.)
#     027 - removes write permissions for the members of a file's group,
#           and removes all permissions for all others.
#   For an explanation of the octal encoding, see "man chmod".
#

umask 022

# set     red="%{\033[1;31m%}"
# set   green="%{\033[0;32m%}"
# set  yellow="%{\033[1;33m%}"
# set    blue="%{\033[1;34m%}"
# set magenta="%{\033[1;35m%}"
# set    cyan="%{\033[1;36m%}"
# set   white="%{\033[0;37m%}"
# set     end="%{\033[0m%}" # This is needed at the end... :(

if ($?prompt) then
  if ( $?tcsh ) then
    # set prompt="%n@%m (%~) % "
    set prompt  = "%! %T %{\033[1;34m%}%n@%B%m%b%{\033[0;37m%} [%{\033[0;32m%}%B%~%b%{\033[0;37m%}]: "
    set prompt2 = "%R loop: "
    set prompt3 = "oops\041 %R (y|n|e)? "
  else
    set prompt="`whoami`@`hostname` $cwd: "
  endif
  #
  set addsuffix autocorrect autoexpand autolist chase_symlinks autolist 
  set history = 1000
  set noclobber filec nobeep
  set symlinks=chase
  set correct = cmd
  set fignore = (.aux .cp .dvi .elc .fn .log .o .orig .pg .toc .tp .vr .bak '~')
  set autolist = ambiguous
  set complete = enhance
  if ( -f ~/init/csh_aliases.sh) then
    source ~/init/csh_aliases.sh
  endif

  #
  # The pager is used by man, mail, elm, etc to show you files.  ("more" is
  # the default, if you don't set PAGER.)
  #
  setenv PAGER less

  #
  # See man less for more choices for settings.
  #
  setenv LESS eMs
  
  setenv EDITOR emacs
  setenv VISUAL emacs
else
  # Not interactive.  This is either a shell script or an rsh.
  unset history
  unset savehist
  unset noclobber
endif

############################################################
#### My tcsh configurations
############################################################















