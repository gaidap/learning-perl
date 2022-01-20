#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

$| = 1;

sub main {
    my $input = 'test.csv';

    unless (open(INPUT, $input)) {
        die("\nCannot open $input");
    }

    <INPUT>; # Skip the first line
    while (<INPUT>) {
        # Remove spaces and newlines from beginning and end of the line
        chomp $_;

        my @values = split(/\s*,\s*/, $_); # use regex to trim spaces on split

        print Dumper(@values); # Print data from array to console.
    }

    close(INPUT);
}

main();
