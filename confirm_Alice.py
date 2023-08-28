# Confirm ParlAI Agent for Alice 

import sys
#sys.path.append('./ParlAI-master/')
sys.path.append('./ParlAI-main/')                   # Please set the PATH name according to your environment.

from parlai.scripts.interactive import Interactive

Interactive.main(model='alice')
