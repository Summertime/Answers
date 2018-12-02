#!/usr/bin/env python3
import sys
from itertools import *

input = [int(l) for l in sys.stdin.read().split()]

# Part 1
print(sum(input))

# Part 2
been = set()
position = 0
for v in cycle(input):
    position += v
    if position in been:
        break
    been.add(position)
print(position)
