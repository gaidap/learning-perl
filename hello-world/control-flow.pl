#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print("What is the weather today: ");
my $weather = <STDIN>;

if ($weather <= 60) {
    print("You should wear long pants and a long sleeve shirt today.");
}
elsif ($weather > 60 && $weather <= 95) {
    print("You should wear short pants and a t-shirt today.");
}
else {
    print("It's to hot to leave the house.");
}
