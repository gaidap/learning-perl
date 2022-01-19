#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

$| = 1;

sub main {
    my ($self) = @_;

    my %monthTable = (    # Declare a hash table with %
        "January"   => 1, # The string quotes are optional but best practice to use
        "February"  => 2,
        "March"     => 3,
        "April"     => 4,
        "May"       => 5,
        "June"      => 6,
        "July"      => 7,
        "August"    => 8,
        "September" => 9,
        "October"   => 10,
        "November"  => 11,
        "December"  => 12,
    );

    my %dayOfWeek = (
        1 => "Monday",
        2 => "Tuesday",
        3 => "Wednesday",
        4 => "Thursday",
        5 => "Friday",
        6 => "Saturday",
        7 => "Sunday",
    );

    print("Month as number: " . $monthTable{"July"} . "\n"); # Look up value with key in table
    print("Day of week: " . $dayOfWeek{5} . "\n");

    my @months = keys(%monthTable); # use keys subroutine to get the key set

    # iterate through table with the keys
    foreach my $month (@months) {
        my $currentMonth = $monthTable{$month};

        print("$currentMonth.) $month\n");
    }

    # Iterate with key and value through table
    while(my ($key, $value) = each(%dayOfWeek)) {
        print("$key: $value\n");
    }
}

main();
