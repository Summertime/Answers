#!/usr/bin/env perl6

sub squares (Int() $left, Int() $top, Int() $width, Int() $height) {
    $left + ^$width X $top + ^$height;

}

my @input = $*ARGFILES
    .lines
    .map({ m:g/ \d+ / })
    ;

my $overlaps = @input
    .map({ .[1..*] })
    .map({ |squares |$_ })
    .map({ .Str }) #serialise for bag's .WHICH
    .Bag
    .grep( *.value > 1 )
    .Set
    ;

say $overlaps.elems;

for @input {
    my $squs = set map *.Str, squares | .[1..*];
    last if not ($squs ∩ $overlaps);
    LAST say .[0];
}
