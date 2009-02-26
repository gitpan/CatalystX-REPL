
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'CatalystX-REPL',
  NAME      => 'CatalystX::REPL',
  AUTHOR    => 'Tomas\ Doram\ \<bobtfish\@bobtfish\.net\>\,\ Florian\ Ragwitz\ \<rafl\@debian\.org\>',
  ABSTRACT  => 'read-eval-print-loop for debugging your Catalyst application',
  VERSION   => '0.01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0',
    "Catalyst" => '5.800006',
    "Carp::REPL" => '0',
  },
);
