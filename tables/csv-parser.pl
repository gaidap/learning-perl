#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

$| = 1;

sub main {
    my $csvFile = 'test.csv';

    unless (open(INPUT, $csvFile)) {
        die("Failed to open file <<$csvFile>>.\n");
    }

    <INPUT>;

    my @data;

    while (my $line = <INPUT>) {
        chomp($line);
        my ($name, $birthdate) = split(/\s*,\s*/, $line);
        my %values = (
            "Name"      => $name,
            "Birthdate" => $birthdate
        );
        push(@data, \%values);
    }

    close(INPUT);

    printResult(@data);
}

sub printResult() {
    my @data = @_;

    foreach my $record (@data) {
        print("\n");
        print("##########\n");
        print("Record: " . Dumper($record));
        print("----------\n");
        print("Name: " . $record->{"Name"} . "\n");
        print("Birthdate: " . $record->{"Birthdate"} . "\n");
        print("\n");
    }
}

main();
