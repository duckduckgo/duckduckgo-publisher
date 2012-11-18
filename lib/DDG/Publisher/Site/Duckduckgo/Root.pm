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

	## TODO

	api => sub {},
	duckduckbot => sub {},
	duckduckpreview => sub {},
	feedback => sub {},
	goodies => sub {},
	privacy => sub {},
	search_box => sub {},
	stickers => sub {},
	tech => sub {},
	terms => sub {},

}}

sub statics {{
	"50x" => sub {},
	asciitable => sub { no_wrapper => 1 },
	"index.tw" => sub {},
	walpha => sub { no_wrapper => 1 },
}}

1;