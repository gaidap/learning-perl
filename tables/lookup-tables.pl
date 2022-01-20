#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

$| = 1;

sub main {

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

    # iterate through table with the keys (not sorted)
    foreach my $month (@months) {
        my $currentMonth = $monthTable{$month};

        print("$currentMonth.) $month\n");
    }
    print("\n");

    # Iterate with key and value through table (not sorted)
    while (my ($key, $value) = each(%dayOfWeek)) {
        print("$key: $value\n");
    }
    print("\n");

    # You can define multiple variables inline with an array
    my ($one, $two, $three) = (1, 2, 3);
    print("The value of \$one: $one\n");
    print("The value of \$two: $two\n");
    print("The value of \$three: $three\n\n");

    # Iterate in order through table
    foreach my $key (sort(keys(%dayOfWeek))) { # for and foreach are synonymous
        my $value = $dayOfWeek{$key};

        print("$key.) $value\n");
    }
    print("\n");

    # Store tables in arrays
    my @monthsFlat;
    push(@monthsFlat, %monthTable); # Results in flat array with keys followed by its value
    print(Dumper(@monthsFlat));

    my @monthsStructured;
    push(@monthsStructured, \%monthTable); # Results in array with a structured data (table) object
    print(Dumper(@monthsStructured));
    print($monthsStructured[0]{"June"} . "\n");

    print("\n");
}

main();
