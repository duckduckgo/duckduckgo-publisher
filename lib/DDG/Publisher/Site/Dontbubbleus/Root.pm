package DDG::Publisher::Site::Dontbubbleus::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{

	index => sub {},

}}

1;