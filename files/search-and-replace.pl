#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$|=1;

sub main {

    my $result = 'result';
    my $writeMode = '>'; # Write to file in overwrite mode, to append use >>
    open(WRITE, $writeMode . $result) or die("Failed to open file <<$result>>.\n");

    my $vimrc = '/home/pac/vimrc';
    open(READ, $vimrc) or die("Failed to open file <<$vimrc>>.\n");
    while (my $line = <READ>) {
        # Print line if it contains word set and switch set to upper case
        if ($line =~ s/\bset\b/SET/ig) {
            print WRITE "$line";
        }
    }

    close(READ);
    close(WRITE);
}

main();
