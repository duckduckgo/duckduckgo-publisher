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
			link => 'http://blog.opensesame.st/',
		},{
			name => 'Zac Pappis',
			title => 'Community',
			info => 'Lead Vocalist',
			image => 'zac',
			link => 'http://zpappis.com/',
		},{
			name => 'Russell Holt',
			title => 'Duck Duck Hack',
			info => 'Geek Dad',
			image => 'russell',
			link => 'http://beicheequi9vieveetohc3aequohngu0ohsh2zeihef7eecha9op7choofohcae.com/',
		},{
			name => 'Jaryd Malbin',
			title => 'Ops',
			info => 'BOFH',
			image => 'jaryd',
			link => 'https://www.youtube.com/watch?v=09j6vMdKi3E',
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
			link => 'http://christophermorast.com/',
		},{
			name => 'Brian Stoner',
			title => 'Front-End',
			info => 'Person',
			image => 'brian',
			link => 'https://twitter.com/bsstoner',
		},{
			name => 'John Barrett',
			title => 'Community',
			info => 'Discombobulator',
			image => 'john',
			link => 'https://github.com/jbarrett/',
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
			date => 'July 21, 2010',
			title => 'Duck.co',
			snippet => 'Launch of DuckDuckGo community site.',
			type => 'news',
		},{
			date => 'January 11, 2011',
			title => 'Billboard',
			snippet => 'Billboard in San Francisco saying "Google tracks you. We don\'t."',
			type => 'news',
		},{
			date => 'February 26, 2011',
			title => '2011 Open-Source Donations',
			snippet => 'Donated $1,909 to nginx, FreeBSD, Tor, Clamwin, Taho-LAFS and OpenSSH.',
			type => 'internal',
			subtype => 'foss',
		},{
			date => 'October 13, 2011',
			title => 'Funding',
			snippet => 'Funding from Union Square Ventures.',
			type => 'internal',
		},{
			date => 'November 1, 2011',
			title => 'Headquarters',
			snippet => 'Moved out of Gabriel\'s basement into Paoli, PA HQ.',
			type => 'internal',
		},{
			date => 'November 30, 2011',
			title => 'Employee #1',
			snippet => 'Hired Caine Tighe as employee #1.',
			type => 'internal',
		},{
			date => 'January 16, 2012',
			title => 'Redesign',
			snippet => 'New visual design with fixed header.',
			type => 'news',
		},{
			date => 'February 13, 2012',
			title => '1,000,000',
			snippet => 'Over 1,000,000 direct searches/day.',
			type => 'traffic',
		},{
			date => 'March 7, 2012',
			title => '2012 Open-Source Donations',
			snippet => 'Donated $9,400 to Perl, unhosted.org, Diaspora*, Wikimedia, Freenet, friendca and Tor.',
			type => 'internal',
			subtype => 'foss',
		},{
			date => 'May 1, 2012',
			title => 'DuckDuckHack',
			snippet => 'Launch of our open-source Instant Answer platform.',
			type => 'news',
		},{
			date => 'February 25, 2013',
			title => '2013 Open-Source Donations',
			snippet => 'Donated $20,000 to OpenStreetMap, EFF, RiseUp, F-Droid, NoScript, Crytocat and JavaScript Blocker.',
			type => 'internal',
			subtype => 'foss',
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
			date => 'March 12, 2014',
			title => '2014 Open-Source Donations',
			snippet => 'Donated $40,000 to SecureDrop, NoseTor, Lavabit, RiseUp, mailpile and I2P.',
			type => 'internal',
			subtype => 'foss',
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
			source => 'fastco',
			source_full => 'FastCoLabs',
			source_link => 'http://www.fastcolabs.com/3026698/inside-duckduckgo-googles-tiniest-fiercest-competitor',
			author_name => 'John Paul Titlow',
			author_img => 'fast-co_john-paul-titlow',
			date => '20 February 2014',
			headline => 'Inside DuckDuckGo, Google\'s Tiniest, Fiercest Competitor',
			snippet => 'In 2008, launching a search engine seemed like a crazy idea.  Here\'s how Gabriel Weinberg proved the critics wrong.',
		},{
			source => 'wapost',
			source_full => 'The Washington Post',
			source_link => 'http://www.washingtonpost.com/business/ducking-google-in-search-engines/2012/11/09/6cf3af10-2842-11e2-bab2-eda299503684_story.html',
			author_name => 'Michael Rosenwald',
			author_img => 'washington-post_michael-rosenwald',
			date => '9 November 2012',
			headline => 'Ducking Google in search engines',
			snippet => 'Not far from Valley Forge, around the corner from Bravo Pizza, up the road from Paoli Auto Body, there is an odd-looking office building that resembles a stone castle.  An eye doctor is on the first floor.  On the second floor is a search engine.',
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
