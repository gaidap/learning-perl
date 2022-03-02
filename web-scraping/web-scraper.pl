#!/usr/bin/perl -l
use strict;
use warnings FATAL => 'all';

use LWP::Simple;

sub scrape {
    print('Start scraping...');
    binmode(STDOUT, ':utf8'); # " To fix 'Wide character in print at'

    my $url = 'https://paul-gaida.com/links';
    my $content = get($url);

    unless (defined($content)) {
        die "Website '$url' unreachable."
    }

    if ($content =~ m'<p><a href=".+?">(.+?)</a></p>'i) {
        my $link = $1;
        print "Link: $link";
    }
    else {
        print 'No link found.'
    }
}

scrape();
