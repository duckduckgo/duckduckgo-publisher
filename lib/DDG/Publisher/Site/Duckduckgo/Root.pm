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
			title => 'Founder',
			info => 'Family guy',
			image => 'gabriel',
		},{
			name => 'Caine Tighe',
			title => 'Core Components',
			info => 'Border Collie',
			image => 'caine',
		},{
			name => 'Zac Pappis',
			title => 'Community',
			info => 'Overdue Videos',
			image => 'zac',
		},{
			name => 'Prakash Swaminathan',
			title => 'Biz Dev',
			info => 'Nice Guy',
			image => 'prakash',
		},{
			name => 'Russell Holt',
			title => 'Duck Duck Hack',
			info => 'Apple Fan',
			image => 'russell',
		},{
			name => 'Jaryd Malbin',
			title => 'Ops',
			info => 'Semi-Professional Gamer',
			image => 'jaryd',
		},{
			name => 'Doug Brown',
			title => 'Front-End',
			info => 'Beverage Connoisseur',
			image => 'doug',
		},{
			name => 'Chris Morast',
			title => 'Design',
			info => 'Margarita Enthusiast',
			image => 'chris',
		},{
			name => 'Jag Talon',
			title => 'Open Source',
			info => 'should buy a car',
			image => 'jag',
		},{
			name => 'Brian Stoner',
			title => 'Front-End',
			info => 'Person',
			image => 'brian',
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
