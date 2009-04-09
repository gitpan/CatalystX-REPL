package TestApp::Controller::Foo;
our $VERSION = '0.03';


use Moose;

BEGIN { extends 'Catalyst::Controller'; }

sub bar : Local {
    die 42;
}

1;
