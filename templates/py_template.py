#!/usr/bin/env python

'''Python 2 Program Template

This program does something.

###############################################################################
# Author            :
# Project           :
# Date created      : YYYY-MM-DD
# Purpose           :
# Description       :
#
# Parameters        :
#
# Date(YYYYMMDD)        Author          Ref    Revision (Date in  format)
# 2001-01-01            David           1      Initial
###############################################################################
'''


########## Standard Modules
from time import time,localtime,strftime
import os
import sys
import argparse
import logging

########## External Modules
# import visa
# import numpy as np
# import pandas as pd

########## User Modules

########## Miscellaneous Modules
# from __future__ import print_function

############################################################
########## Global varibles
############################################################
########## Default values, DO NOT modify this section
_LOG_MOD = None
_ARGS = None
_DIR_WORK = os.path.dirname(os.path.abspath(__name__))
_T_START, _T_STOP = None, None
_FMT_TIME='%y%m%d-%H-%M-%S'

########## Public global varibles
VERSION = '0.1.0'

########## Module global varible
_DIR_WORK = r'C:\xtemp'  # Set default directory


def startup(dir_working=_DIR_WORK):
    global _ARGS
    global _LOG_MOD
    ########## Change working directory
    if not os.path.exists(dir_working): os.mkdir(dir_working, 755)
    os.chdir(dir_working)
    print os.getcwd()

    ########## Setup the logger
    loggingfmt = '%(asctime)s|%(name)-10s %(threadName)-12s|%(levelname)8s|%(lineno)4d  %(message)s'
    logging.basicConfig(level=logging.NOTSET, stream=sys.stdout, format=loggingfmt, datefmt='%m%d-%H:%M:%S')
    _LOG_MOD = logging.getLogger(__name__)

    ########## Setup argument parser
    ap = argparse.ArgumentParser(description=__doc__, epilog='%(prog)s '+VERSION,\
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--version', action='version', version='%(prog)s ' + VERSION)
    ap.add_argument('-i', '--in-file', metavar='FILE', nargs='*',
                    help='the files to read')
    ap.add_argument('-o', '--out-file', metavar='FILE', nargs='*',
                    help='the files to write')
    ap.add_argument('--loops', type=int, default = 1,metavar='int',
                    help='Number of loops of the main work function')
    ap.add_argument('--verbose', action='store_true',
                    help='Make the program more verbose')
    ap.add_argument('--debug', action='store_true',
                    help='Print additional debug information')
    _ARGS = ap.parse_args()


############################################################
########## Module functions
############################################################
def user_func():
    pass


############################################################
########## Module classes
############################################################
class UserClass():
    pass


############################################################
########## Module main functions
############################################################

def main_work():
    pass

def main():

    print _ARGS

    _T_START = time()
    main_work()
    _T_STOP = time()
    t_main=_T_STOP-_T_STOP
    print '>>>>> Sec/Min/Hour: %.2g/%.2g/%.2g'%(t_main,t_main/60.0,t_main/3600.0),'\t',\
        'Start: ', strftime(_FMT_TIME,localtime(_T_START)), '\tStop: ',strftime(_FMT_TIME,localtime())

if __name__ == '__main__':
    startup()
    main()
