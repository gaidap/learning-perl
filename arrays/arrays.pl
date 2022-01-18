#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

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
        push(@lines, $line);
    }

    close(INPUT);

    foreach my $line (@lines) {
        print($line . "\n");
    }
}

main();
