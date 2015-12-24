#!/usr/bin/env python

import sys
import os

if len(sys.argv) != 3:
    print 'error'
    print 'usage: ', sys.argv[0], ' <project name> <source dir>'

project_path = os.getcwd() + '/' + sys.argv[2]
name = '[' + sys.argv[1] + ']'

fp = open('/home/feng/.indexer_files', 'a')
fp.writelines(["\n", name, "\n", project_path, "\n"])
fp.close()
