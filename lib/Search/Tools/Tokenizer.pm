package Search::Tools::Tokenizer;
use strict;
use warnings;
use base qw( Search::Tools::Object );
use Search::Tools;    # XS package required
use Search::Tools::Token;
use Carp;

our $VERSION = '0.24';

__PACKAGE__->mk_accessors(qw( re ));

sub _init {
    my $self = shift;
    $self->SUPER::_init(@_);
    if ( !exists $self->{re} ) {
        croak "token_re required";
    }
    return $self;
}

1;