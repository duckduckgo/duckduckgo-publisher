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
		},{
			name => 'John Barrett',
			title => 'Community',
			info => 'Discombobulator',
			image => 'john',
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
			snippet => 'Funding from Union Square Ventures.',
			type => 'internal',
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
		
		news_articles => [{
			source => 'theguardian',
			source_full => 'The Observer',
			source_link => 'http://www.theguardian.com/technology/2014/apr/04/duckduckgo-gabriel-weinberg-secure-searches',
			author_name => 'Alex Hern',
			author_img => 'the-guardian_alex-hern',
			date => '4 April 2014',
			headline => 'DuckDuckGo: the plucky upstart taking on Google with secure searches',
			snippet => 'Gabriel Weinberg launched DuckDuckGo as a search engine that puts privacy first, rather than collecting data for advertisers and security agencies...',
		},{
			source => 'wapost',
			source_full => 'The Washington Post',
			source_link => 'http://www.washingtonpost.com/business/ducking-google-in-search-engines/2012/11/09/6cf3af10-2842-11e2-bab2-eda299503684_story.html',
			author_name => 'Michael Rosenwald',
			author_img => 'washington-post_michael-rosenwald',
			date => '9 November 2012',
			headline => 'Ducking Google in search engines',
			snippet => 'Not far from Valley Forge, around the corner from Bravo Pizza, up the road from Paoli Auto Body, there is an odd-looking office building that resembles a stone castle.  An eye doctor is on the first floor.  On the second floor is a search engine.',
		},{
			source => 'fastco',
			source_full => 'FastCoLabs',
			source_link => 'http://www.fastcolabs.com/3026698/inside-duckduckgo-googles-tiniest-fiercest-competitor',
			author_name => 'John Paul Titlow',
			author_img => 'fast-co_john-paul-titlow',
			date => '20 February 2014',
			headline => 'Inside DuckDuckGo, Google\'s Tiniest, Fiercest Competitor',
			snippet => 'In 2008, launching a search engine seemed like a crazy idea.  Here\'s how Gabriel Weinberg proved the critics wrong.',
		}]
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
