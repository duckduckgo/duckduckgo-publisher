package DDG::Publisher::Site::Duckduckgo::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	about => sub {},
	bang => sub {},
	index => sub {
		no_wrapper => 1,
		homepage => 1,
	},	
	logos => sub {},
	newbang => sub {},
	params => sub {},
	settings => sub {},
	spread => sub {},
}}

sub statics {{
	"50x" => sub {},
	api => sub {},
	asciitable => sub { no_wrapper => 1 },
	duckduckbot => sub {},
	duckduckpreview => sub {},
	feedback => sub {},
	goodies => sub {},
	"index.tw" => sub {},
	privacy => sub {},
	search_box => sub {},
	stickers => sub {},
	tech => sub {},
	terms => sub {},
	walpha => sub { no_wrapper => 1 },
}}

1;