#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$| = 1;

sub main {

    # examples escape sequences:
    # \d => digit
    # \s => space
    # \S => non-space
    # \w => alphanumeric

    my $text = 'I am 117 years old tomorrow.';
    if($text =~ /(\d+\s\S*)/) {
        print("$1\n");
    }

    # examples numeric quantifiers
    # * => zero or more preceding characters
    # *? => zero or more preceding characters, as few as possible
    # + => one or more preceding characters, as many as possible
    # +? => one or more preceding characters, as few as possible
    # {3} => exactly three of the preceding characters or sequences
    # {3,6} => between 3 and 6 of the preceding (inclusive)
    # {3,} => at least three (inclusive)

    my $code = 'DE$2342555';
    if($code =~ /(DE\$\d{5,10})/) {
        print("$1\n");
    }
}

main();
