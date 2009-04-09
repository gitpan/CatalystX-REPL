package TestApp;
our $VERSION = '0.03';


use Moose;

extends 'Catalyst';
with 'CatalystX::REPL';

__PACKAGE__->setup;

1;
