#!/usr/bin/env perl6
my @input = $*ARGFILES.lines;

# Part 1
say .{2} * .{3} given bag @input.map: *.comb.Bag.values.Set.keys.Slip;
