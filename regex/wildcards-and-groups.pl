#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$|=1;

sub main {
    my ($self) = @_;
    my $vimrc = '/home/pac/vimrc';

    # uses short circuit mechanism with boolean logic for exception handling
    open(FILE, $vimrc) or die("Failed to open file <<$vimrc>>.\n");

    while (my $line = <FILE>) {
        if ($line =~ /(.et).+(.ap)/) { # create a capture group with round brackets
            print "'$1 $2'\n"; # reference the groups with $ and an index, starting by 1
        }
    }

    close(FILE);
}

main();
