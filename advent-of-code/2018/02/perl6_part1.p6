#!/usr/bin/env perl6
say .{2} * .{3} given bag $*ARGFILES.lines.map: *.comb.Bag.values.Set.keys.Slip;
