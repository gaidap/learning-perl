#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print('Hello world!');

print("\nWhat is your name: ");
{
    my $name = <STDIN>;
    print("Hello, ", $name, "\n\n");
}
