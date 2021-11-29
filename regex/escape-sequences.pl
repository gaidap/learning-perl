#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$| = 1;

sub main {
    my ($self) = @_;

    # examples:
    # \d => digit
    # \s => space
    # \S => non-space
    # \w => alphanumeric

    my $text = 'I am 117 years old tomorrow.';
    if($text =~ /(\d+\s\S*)/) {
        print($1);
    }
}

main();
