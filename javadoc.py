import os
import re
import sys

if(len(sys.argv) > 1):
	with open(sys.argv[0]) as f:
		content = f.readlines()
		print content
else: print "Please supply a file argument"
