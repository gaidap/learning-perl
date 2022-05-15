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
    GOTO: while (<INPUT>) {
        # Check if line is not empty or skip it
        $_ =~ /\S+/ or next;

        # Remove spaces and newlines from beginning and end of the line
        chomp $_;

        my @values = split(/\s*,\s*/, $_); # use regex to trim spaces on split

        if(scalar(@values) < 3) {
            print("Invalid line: $_\n");
            next;
        }

        foreach my $line(@values) {
            if($line eq '') {
                print("Invalid line: $_\n");
                next GOTO; # This is called a label and it is simply a goto. You can name it like you want.
            }
        }

        print Dumper(@values); # Print data from array to console.
    }

    close(INPUT);
}

main();
