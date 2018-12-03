#!/usr/bin/env perl6

sub squares (Int() $left, Int() $top, Int() $width, Int() $height) {
    $left + ^$width X $top + ^$height;

}


say $*ARGFILES.lines
    .map({ m:g/ \d+ / })
    .map({ .[1..*] })
    .map({ |squares |$_ })
    .map({ .Str }) #serialise for bag's .WHICH
    .Bag
    .grep( *.value > 1 )
    .elems
    ;
