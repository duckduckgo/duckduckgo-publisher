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
	api => sub {},
	bang => sub {},
}}

sub statics {{
	walpha => sub {
		no_wrapper => 1,
	},
	######
	# lets make that with wrapper to be in style of duckduckgo, why not?
	"50x" => sub {},
	duckduckbot => sub {},
	terms => sub {},
	traffic => sub {},
	######
	asciitable => sub {
		no_wrapper => 1,
	},
}}

1;