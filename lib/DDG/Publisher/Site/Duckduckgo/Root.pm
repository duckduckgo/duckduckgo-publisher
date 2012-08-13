package DDG::Publisher::Site::Duckduckgo::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	index => sub {},
	about => sub {},
	feedback => sub {},
	privacy => sub {},
	spread => sub {},
}}

1;