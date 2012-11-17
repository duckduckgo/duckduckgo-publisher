package DDG::Publisher::Meta;

use MooX;

has _values => (
	is => 'ro',
	default => sub {{}},
);
sub values { shift->_values }

sub new_from_ini {
	my ( $class, $data ) = @_;
	use DDP; p($data);
	return DDG::Publisher::Meta->new;
}

sub clone_with_ini {
	my ( $self, $data ) = @_;

}

1;