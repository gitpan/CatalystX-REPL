package TestApp;
our $VERSION = '0.01';


use Moose;

extends 'Catalyst';
with 'CatalystX::REPL';

__PACKAGE__->setup;

1;
