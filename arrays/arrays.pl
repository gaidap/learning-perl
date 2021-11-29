#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$|=1; # Deactivate output buffering

sub main {
    my ($self) = @_;
    my $vimrc = '/home/pac/vimrc';
    my $bashrc = '/home/pac/.bashrc';
    my $ideavimrc = '/home/pac/.ideavimrc';
    my @files = ($vimrc, $bashrc, $ideavimrc);
    foreach my $file (@files) {
        if (-f $file) {
            print("File $file exists.\n");
        }
        else {
            print("File $file not exists.")
        }
    }

}
