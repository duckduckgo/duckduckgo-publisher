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
		alt_header => 1,
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
			info => 'Lead Vocalist',
			image => 'zac',
		},{
			name => 'Russell Holt',
			title => 'Duck Duck Hack',
			info => 'Geek Dad',
			image => 'russell',
		},{
			name => 'Jaryd Malbin',
			title => 'Ops',
			info => 'BOFH',
			image => 'jaryd',
		},{
			name => 'Doug Brown',
			title => 'Front-End',
			info => 'Coffee Snob',
			image => 'doug',
		},{
			name => 'Chris Morast',
			title => 'Design',
			info => 'Margarita Enthusiast',
			image => 'chris',
		},{
			name => 'Jag Talon',
			title => 'Open Source',
			info => 'Internet Survival Expert',
			image => 'jag',
		},{
			name => 'Brian Stoner',
			title => 'Front-End',
			info => 'Person',
			image => 'brian',
		}],
		ddg_events => [{
			date => 'February 29, 2008',
			title => 'Incorporation',
			snippet => 'Officially became a company on a leap day!',
			type => 'internal',
		},{
			date => 'September 25, 2008',
			title => 'Launch',
			snippet => 'Soft-launch on Hacker News.',
			type => 'news',
		},{
			date => 'January 11, 2011',
			title => 'Billboard',
			snippet => 'Billboard in San Francisco saying "Google tracks you. We don\'t."',
			type => 'news',
		},{
			date => 'October 13, 2011',
			title => 'Funding',
			snippet => 'Funding from Union Square Ventures (backers of Twitter, Tumblr, Foursquare, Kickstarter, etc.).',
			type => 'news',
		},{
			date => 'November 30, 2011',
			title => 'Employee #1',
			snippet => 'Hired Caine Tighe as employee #1.',
			type => 'internal',
		},{
			date => 'February 13, 2012',
			title => '1,000,000',
			snippet => 'Over 1,000,000 direct searches/day.',
			type => 'traffic',
		},{
			date => 'May 1, 2012',
			title => 'DuckDuckHack',
			snippet => 'Launch of our open-source Instant Answer platform.',
			type => 'news',
		},{
			date => 'June 10, 2013',
			title => '2,000,000',
			snippet => 'Over 2,000,000 direct searches/day.',
			type => 'traffic',
		},{
			date => 'June 17, 2013',
			title => '3,000,000',
			snippet => 'Over 3,000,000 direct searches/day.',
			type => 'traffic',
		},{
			date => 'June 27, 2013',
			title => 'Search & Stories',
			snippet => 'Launch of our refreshed mobile apps.',
			type => 'news',
		},{
			date => 'August 19, 2013',
			title => '4,000,000',
			snippet => 'Over 4,000,000 direct searches/day.',
			type => 'traffic',
		},{
			date => 'February 26, 2014',
			title => '5,000,000',
			snippet => 'Over 5,000,000 direct searches/day.',
			type => 'traffic',
		},{
			date => 'March 17, 2014',
			title => 'Employee #10',
			snippet => 'Hired Brian Stoner as employee #10.',
			type => 'internal',
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
