#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

my @animals = ('dog', 'cat', 'horse');
my @fruit = ('orange', 'kiwi', 'apple');

my @unionValues;

push(@unionValues, @animals); # Stores all values from animals in unionValues
push(@unionValues, @fruit); # now all values from animals and fruits are combined in a single array

print(Dumper(@unionValues));

my @multiArray;

push(@multiArray, \@animals); # Use backslash to push a reference to multiArray
push(@multiArray, \@fruit); # now the sub arrays are separated and stored as an multi dimensional array

print(Dumper(@multiArray));
