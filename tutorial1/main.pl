#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use LWP::Simple;

sub main {
    print("Start scraping...");
    binmode(STDOUT, ':utf8'); # " To fix 'Wide character in print at'
    # print(get("https://paul-gaida.com"));
    getstore("https://paul-gaida.com", "paul.html");
    print("Finished scraping.")
}

main();
