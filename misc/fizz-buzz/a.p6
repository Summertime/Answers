#!/usr/bin/env perl6
for 1..100 {
    my $output;
    $output ~= 'Fizz' if $_ %% 3;
    $output ~= 'Buzz' if $_ %% 5;
    $output ~= $_ if not $output;
    $output.say;
}
