#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $var_1 = "
Hello darkness
    my old friend.
";
my $var_2 = '
Today is a
    wonderful day.
';

my $var_3 = 42;
my $var_4 = 42.23;

print($var_1 . $var_2);
print($var_3 * $var_4);
