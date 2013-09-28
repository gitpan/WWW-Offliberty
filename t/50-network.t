#!/usr/bin/perl -w
use strict;
use warnings;

use Test::More;
use WWW::Offliberty qw/off/;

if ($ENV{NETWORK_TEST}) {
  plan tests => 2;

  my @results;

  @results = off "http://youtube.com/watch?v=Tj75Arhq5ho";
  is @results, 1, 'youtube';

  @results = off "http://youtube.com/watch?v=Tj75Arhq5ho", video_file => 1;
  is @results, 2, 'youtube, video_file => 1';
} else {
  plan skip_all => '$ENV{NETWORK_TEST} not true';
}
