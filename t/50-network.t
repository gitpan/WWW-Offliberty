#!/usr/bin/perl -w
use strict;
use warnings;

use LWP::Online ':skip_all';
use Test::More tests => 2;
use WWW::Offliberty qw/off/;

my @results;
@results = off "http://youtube.com/watch?v=Tj75Arhq5ho";
is @results, 1, 'youtube';

@results = off "http://youtube.com/watch?v=Tj75Arhq5ho", video_file => 1;
is @results, 2, 'youtube, video_file => 1';
