#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$| = 1;

sub main {
    my ($self) = @_;
    my $vimrc = '/home/pac/vimrc';

    # uses short circuit mechanism with boolean logic for exception handling
    open(FILE, $vimrc) or die("Failed to open file <<$vimrc>>.\n");

    while (my $line = <FILE>) {
        if ($line =~ /(.*)/) {
            # match all characters and put it into a capture group,
            # asterisk means match character 0 to n times, plus means 1 to n times
            # asterisk is greedy and matches as much as it can. Use ? to prevent asterisk being greedy.
            print "$1\n";
        }
    }

    close(FILE);
}

main();
