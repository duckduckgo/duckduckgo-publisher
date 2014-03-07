package DDG::Publisher::Site::Duckduckgo::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
    serp => sub {
        no_content_internal => 1,
		no_logo => 1,
		has_zcm => 1,
		has_zci => 1,
    },
	about => sub {
		no_content_internal => 1,
		no_spacer => 1,
		no_logo => 1,
		no_cw => 1,
		team_members => [{
			name => 'Gabriel Weinberg',
			title => 'President, right?',
			image => 'gabriel.png',
		},{
			name => 'Prakash Swaminathan',
			title => 'VP / Biz Dev',
			image => 'prakash.png',
		},{
			name => 'Caine Tighe',
			title => 'Core Things',
			image => 'caine.png',
		},{
			name => 'Russell Holt',
			title => 'Duck Duck Hack',
			image => 'russell.png',
		},{
			name => 'Jaryd Malbin',
			title => 'Computers',
			image => 'jaryd.png',
		},{
			name => 'Zac Pappis',
			title => 'Community',
			image => 'zac.png',
		},{
			name => 'Doug Brown',
			title => 'Coffee',
			image => 'doug.png',
		},,{
			name => 'Juan Antonio',
			title => 'Gabriel Talon',
			image => 'jag.png',
		},{
			name => 'Chris Morast',
			title => 'Design',
			image => 'chris.png',
		}],
	},
	bang => sub {},
	goodies => sub {
		goodies => 1,
		no_logo => 1,
		no_content_internal => 1,
	},
	index => sub {
		no_wrapper => 1,
		homepage => 1,
	},
	newbang => sub {},
	params => sub {},
	settings => sub {
		no_logo => 1,		
		yui_body_header => 1
	},
	supportus => sub {
		no_logo => 1,
	},

	## TODO

	api => sub {},
	duckduckbot => sub {},
	duckduckpreview => sub {},
	feedback => sub {
		no_logo => 1,
	},
	privacy => sub {},
	search_box => sub {},

}}

sub statics {{
	"50x" => sub {
		no_wrapper => 1,
		homepage => 1,
	},
}}

1;
