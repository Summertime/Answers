#!/usr/bin/env perl6
for [\+] |$*ARGFILES.lines xx * {
    state SetHash $been;
    last if $been{$_}++;
    LAST .say;
}
