
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'CatalystX-REPL',
  NAME      => 'CatalystX::REPL',
  AUTHOR    => 'Tomas\ Doran\ \<bobtfish\@bobtfish\.net\>\,\ Florian\ Ragwitz\ \<rafl\@debian\.org\>\,\ Ash\ Berlin\ \<ash\@cpan\.org\>',
  ABSTRACT  => 'read-eval-print-loop for debugging your Catalyst application',
  VERSION   => '0.03',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0',
    "Catalyst" => '5.800006',
    "Carp::REPL" => '0',
  },
);
