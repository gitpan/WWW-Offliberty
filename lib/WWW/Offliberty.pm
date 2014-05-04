package WWW::Offliberty;

use 5.014;
use strict;
use warnings;
use parent qw/Exporter/;
our $VERSION = '0.002';
our @EXPORT_OK = qw/off/;

use HTML::TreeBuilder;
use LWP::UserAgent;

my $ua = LWP::UserAgent->new;

sub off{
	my ($url, @params) = @_;
	my $content = $ua->post("http://offliberty.com/off54.php", {track => $url, @params})->decoded_content;
	my $root = HTML::TreeBuilder->new_from_content($content);
	map { $_->attr('href') } $root->look_down(qw/_tag a class download/);
}

1;
__END__

=head1 NAME

WWW::Offliberty - interface to offliberty.com download service

=head1 SYNOPSIS

  use WWW::Offliberty qw/off/;
  my @links = off 'http://youtube.com/watch?v=something', video_file => 1;

=head1 DESCRIPTION

WWW::Offliberty is a simple interface to the offliberty.com download service.

It exports a single function: B<off>(I<url>, [I<argument> => value...]).
This function  that returns a list of download links,
as returned by the service.

=head1 SEE ALSO

L<http://offliberty.com>

=head1 AUTHOR

Marius Gavrilescu, E<lt>marius@ieval.roE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Marius Gavrilescu

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.18.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
