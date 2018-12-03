#!/usr/bin/env python3
import sys
from itertools import *

been = set()
position = 0
for v in cycle(int(l) for l in sys.stdin.read().split()):
    position += v
    if position in been:
        break
    been.add(position)
print(position)
