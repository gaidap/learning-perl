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
        if ($line =~ /search/) {
            print "$line";
        }
    }

    close(FILE);
}

main();
