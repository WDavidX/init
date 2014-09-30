#
# Default user .cshrc file
#
# Usage:  Copy this file to a user's home directory and edit it to
# customize it to taste.  It is run by csh each time it starts up.
#
# Modified 981209 jsin
# Modified 981001 djo based on originals from dhynson
#

# source /tools/bin/common.cshrc

# setenv EDITOR emacs
setenv PAGER less
setenv LPDEST lp
#setenv TERM vt100

#######################################
#PERSONAL CUSTOMIZATION BELOW THIS LINE
#######################################

unset noclobber

# additional paths
#set path = ( . /home/ricks/bin $path /tools/libutils/libdev/bin /projects/toolslibrary/memgine/SW/bin )

# libdev stuff
setenv PYTHONPATH /projects/libdev_py/pathgen

# for license use (finesim plus maybe others)
setenv INTENDED_USE libdev


#setenv SVN_EDITOR "gvim --nofork"
setenv SVN_EDITOR "emacs"
alias swmemgine cd /projects/libws/xuw/swmemgine


#source ~/.cshrc.aliases

# setenv turbo_MEMGINEROOT /projects/libws/ricks/swmemgine/trunk
# added to get vtcg shifting to find correct path
# setenv MEMGINEROOT /projects/libws/ricks/swmemgine/trunk
# setenv BLDCADENCESETUPDIR /projects/toolslibrary/cadence/setup


# Cadance Variables
setenv BLDCADENCESETUPDIR /tools/library/cadence/setup
setenv MMSIMVER MMSIM13.1-XPS-ER-02132014  # Mar 12, 2014
setenv NOVASVER Verdi3-2012.07p3 # Sep 19, 2012
setenv CDSVER IC615-ISR2  # feb 27, 2012


# Synopsys Waveviewer
setenv WAVEVIEWVER 2013.03     # Sept. 30, 2013

# setting Magma version
setenv FINESIMVER 2013.12-SP1-2  # Apr 4, 2014 ## update to get better lkg accuracy

# Setting Starrcxt version
setenv STARRCXTVER 2012.06-SP1    # Jul 30, 2012
setenv STARRCXT64 1

# Setting Calibre version
setenv  CALIBREVER  calibre_2013.4_15.12   # Feb 28, 2014

## Solido
setenv VARDESIGNERVER 3.2.5 # Mar 13, 2014

## candence ncverilog
setenv CDSVER IUS92-s040

setenv SPYGLASSVER SpyGlass-5.3.0.2

# setting Printer Location
#setenv LPDEST   prtphxa002 # printer in Tempe, AZ
#setenv LPRINTER prtphxa002 # printer in Tempe, AZ
#setenv PRINTER  prtphxa002 # printer in Tempe, AZ
setenv LPDEST   prtmspa001 # printer in Bloomington, MN
setenv LPRINTER prtmspa001 # printer in Bloomington, MN
setenv PRINTER  prtmspa001 # printer in Bloomington, MN
