#!/usr/bin/env python3
import sys
import re
from itertools import *
from collections import *

def squares(left:int, top:int, width:int, height:int):
    return product(range(left, left+width), range(top, top+height))

claimed_squares = Counter()
for line in sys.stdin.readlines():
    id, *dim = map(int, re.findall(r'\d+', line))
    claimed_squares.update(squares(*dim))

print(sum(v > 1 for k,v in claimed_squares.items()))
