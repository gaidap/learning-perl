#!/usr/bin/perl -l
use strict;
use warnings FATAL => 'all';

use Data::Dumper;
use Getopt::Std;

$| = 1;

sub main {
    my %options;
    getopts('ab:c', \%options);

    my $param = $options{'b'};

    print Dumper($param);
}

main();
