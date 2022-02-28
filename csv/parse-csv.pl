#!/usr/bin/perl -l
use strict;
use warnings FATAL => 'all';

use Data::Dumper;

$/ = "\r\n"; # determine input record separator for chomp to remove

my $notEmpty = qr/\S+/;
my $isEmpty = qr/^\s*$/;

sub readCsv() {
    my $csvFile = 'test.csv';

    open FH, '<', $csvFile or die $!;

    my $headers = <FH>;
    chomp $headers; # Remove line break or carriage return
    my @headers = split ',', $headers;

    my @data;
    LINE:
    foreach my $line (<FH>) {
        chomp $line;
        if ($line =~ $isEmpty) {
            next;
        }

        $line =~ s/^\s*|\s*$//g;        # Trim line
        $line =~ s/\?|\$|approx.\s*//g; # Clean up data

        my @values = split ',', $line;
        if (@values < 3) {
            next;
        }

        my %record;
        for (my $i = 0; $i < @headers; $i++) {
            my $header = $headers[$i];
            my $value = $values[$i];
            if ($value =~ $notEmpty) {
                $record{$header} = $value;
            }
            else {
                print "Record data incomplete - $header: '$value'";
                next LINE;
            }
        }
        push @data, \%record;
    }
    print Dumper @data;
    close FH;
}

readCsv();

