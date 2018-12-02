#!/usr/bin/env perl6
my @input = $*ARGFILES.lines;

# Part 1
say [+] @input;

# Part 2
for [\+] |@input xx * {
    state SetHash $been;
    last if $been{$_}++;
    LAST .say;
}
