#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

$|=1; # Deactivate output buffering

sub main {
    my ($self) = @_;

    my $testFile = 'test.csv';

    unless (open(INPUT, $testFile)) {
        die("Failed to open file <<$testFile>>.\n");
    }

    <INPUT>;

    my @lines; # Perl initializes arrays as empty on default.

    while (my $line = <INPUT>) {
        chomp($line);
        my @values = split(/\s*,\s*/, $line);
        # $lines[$count] = $line; One way of pushing to an array
        push(@lines, \@values);
    }

    close(INPUT);

    # print($lines[0][0] . "\n"); Access values in multi-dimensional array

    foreach my $line (@lines) {
        print("Record: " . Dumper($line) . "\n");
        print("Name: " . $line->[0] . "\n");
        print("Birthdate: " . $line->[1] . "\n");
    }
}

main();
