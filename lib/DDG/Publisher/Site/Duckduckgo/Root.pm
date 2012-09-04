package DDG::Publisher::Site::Duckduckgo::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	index => sub {
		no_wrapper => 1,
		homepage => 1,
	},
	about => sub {},
	feedback => sub {},
	privacy => sub {},
	spread => sub {},	
}}

1;