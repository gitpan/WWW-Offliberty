use ExtUtils::MakeMaker;

WriteMakefile(
  NAME             => 'WWW::Offliberty',
  VERSION_FROM     => 'lib/WWW/Offliberty.pm',
  ABSTRACT_FROM    => 'lib/WWW/Offliberty.pm',
  AUTHOR           => 'Marius Gavrilescu <marius@ieval.ro>',
  MIN_PERL_VERSION => '5.14.0',
  LICENSE          => 'perl',
  SIGN             => 1,
  PREREQ_PM        => {
	HTML::TreeBuilder => 0,
	LWP::UserAgent => 0,
  },
  META_ADD         => {
	dynamic_config => 0,
	resources      => {
	  repository   => 'http://git.ieval.ro/?p=www-offliberty.git',
	},
  }
);
