#!/usr/bin/env perl6
sub distance(Str $a, Str $b) returns Int {
    ($a.chars - $b.chars).abs + [+] $a.comb Zne $b.comb;
}

my @correct = $*ARGFILES.lines.combinations(2).first: {1 == distance |$_};

say (zip @correct.map(*.comb)).flat.grep(* eq *).map(*[0]).join;
