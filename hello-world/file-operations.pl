#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $filename = 'perl/hello-world/test.txt';
open(my $fh, "<", $filename)  or die "Could not open $filename, $!";

while (my $row = <$fh>) {
    chomp($row);
    print($row, "\n");
}

close($fh);

open($fh, ">>", $filename)  or die "Could not open $filename, $!";

print($fh "Justus\n");
print($fh "Bob\n");
print($fh "Peter\n");

close($fh);
