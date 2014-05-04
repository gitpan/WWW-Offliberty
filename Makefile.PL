use ExtUtils::MakeMaker;
use 5.014000;

WriteMakefile(
	NAME             => 'WWW::Offliberty',
	VERSION_FROM     => 'lib/WWW/Offliberty.pm',
	ABSTRACT_FROM    => 'lib/WWW/Offliberty.pm',
	AUTHOR           => 'Marius Gavrilescu <marius@ieval.ro>',
	EXE_FILES        => ['off'],
	MIN_PERL_VERSION => '5.14.0',
	LICENSE          => 'perl',
	BUILD_REQUIRES    => {
		qw/LWP::Online 0/,
	},
	SIGN             => 1,
	PREREQ_PM        => {
		qw/Getopt::Long      0
		   HTML::TreeBuilder 0
		   LWP::UserAgent    0/
		 },
	META_ADD         => {
		dynamic_config => 0,
		resources      => {
			repository   => 'http://git.ieval.ro/?p=www-offliberty.git',
		},
	}
);
