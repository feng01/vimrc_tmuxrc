#!/usr/bin/env python

import sys
import os

if len(sys.argv) != 2:
    print 'parameter error !'
    print 'usage:', sys.argv[0], ' <dir>'
    exit()

for dir in os.listdir(sys.argv[1]):
    if os.path.isdir(dir):
        dir = dir + '/.git'
        if os.path.exists(dir):
            if os.system('rm -rf ' + dir) == 0:
                print 'deleted ', dir 
            dir = dir + 'ignore'
            if os.path.exists(dir):
                if os.system('rm -rf ' + dir) == 0:
                    print 'deleted ', dir
