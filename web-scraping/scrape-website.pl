#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use LWP::Simple;

sub main {
    print("Start scraping...\n");
    binmode(STDOUT, ':utf8'); # " To fix 'Wide character in print at'
    # print(get("https://paul-gaida.com"));
    my $statusCode = getstore("https://paul-gaida.com", "paul.html");
    if (200 != $statusCode) {
        print("Scraping failed.")
    }
    else {
        print("Finished scraping.")
    }
}

main();
