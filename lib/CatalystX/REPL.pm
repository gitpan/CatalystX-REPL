package CatalystX::REPL;
our $VERSION = '0.01';

# ABSTRACT: read-eval-print-loop for debugging your Catalyst application

use Moose::Role;
use Carp::REPL ();
use Catalyst::Utils;

use namespace::clean -except => 'meta';


after setup_finalize => sub {
    my ($self) = @_;
    $SIG{__DIE__} = \&Carp::REPL::repl
        if Catalyst::Utils::env_value($self, 'repl');
};

1;

__END__
=head1 NAME

CatalystX::REPL - read-eval-print-loop for debugging your Catalyst application

=head1 VERSION

version 0.01

=head1 SYNOPSIS

    package MyApp;

    use Moose;

    extends 'Catalyst';
    with 'CatalystX::REPL';

    __PACKAGE__->setup(qw/-Debug/);

    1;

=head1 DESCRIPTION

This role automatically sets up Carp::REPL after starting your application, if
the C<CATALYST_REPL> or C<MYAPP_REPL> environment variabeles are set.

=head1 AUTHORS

  Tomas Doram <bobtfish@bobtfish.net>
  Florian Ragwitz <rafl@debian.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

