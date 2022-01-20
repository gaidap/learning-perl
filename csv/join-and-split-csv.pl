#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$| = 1;

sub main {
    my $input = 'test.csv';

    unless (open(INPUT, $input)) {
        die("\nCannot open $input");
    }

    <INPUT>; # Skip the first line
    while (<INPUT>) {
        # Read one line until it returns undef
        my @values = split(",", $_); # $_ is the current line
        print join('|', @values);
    }

    close(INPUT);
}

main();
