package DDG::Publisher::Site::Duckduckgo::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	about => sub {
		nav_footer => 1,
		copyright_footer => 1,
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		hero_header => 1,
		hero_header_text => 1,
		js_page_type => 'About',
		team_members => [{
			name => 'Gabriel Weinberg',
			title => 'Founder',
			info => 'Family guy',
			image => 'gabriel',
			link => 'https://twitter.com/yegg/',
		},{
			name => 'Caine Tighe',
			title => 'Search',
			info => 'Border Collie',
			image => 'caine',
			link => 'http://opensesame.st/',
		},{
			name => 'Zac Pappis',
			title => 'Community',
			info => 'Lead Vocalist',
			image => 'zac',
			link => 'https://twitter.com/zacpappis',
		},{
			name => 'Russell Holt',
			title => 'Platform',
			info => 'Geek Dad',
			image => 'russell',
			link => 'http://beicheequi9vieveetohc3aequohngu0ohsh2zeihef7eecha9op7choofohcae.com/',
		},{
			name => 'Jaryd Malbin',
			title => 'Operations',
			info => 'BOFH',
			image => 'jaryd',
			link => 'https://jaryd.org',
		},{
			name => 'Doug Brown',
			title => 'Search',
			info => 'Coffee Snob',
			image => 'doug',
			link => 'https://twitter.com/sdougbrown',
		},{
			name => 'Chris Morast',
			title => 'Design',
			info => 'Margarita Enthusiast',
			image => 'chris',
			link => 'http://christophermorast.com/',
		},{
			name => 'Jag Talon',
			title => 'Platform',
			info => 'Internet Survival Expert',
			image => 'jag',
			link => 'https://twitter.com/juantalon',
		},{
			name => 'Brian Stoner',
			title => 'Search',
			info => 'Person',
			image => 'brian',
			link => 'https://twitter.com/bsstoner',
		},{
			name => 'John Barrett',
			title => 'Community',
			info => 'Discombobulator',
			image => 'john',
			link => 'https://github.com/jbarrett/',
		},{
			name => 'Jason Dorweiler',
			title => 'Platform',
			info => 'Robot',
			image => 'jason',
			link => 'http://www.transistor.io',
		},{
			name => 'Maria Grazia Alastra',
			title => 'Platform',
			info => 'Time Traveler',
			image => 'maria',
			link => 'https://github.com/MariagraziaAlastra/',
		},{
			name => 'Abe Yang',
			title => 'Design',
			info => 'Hero',
			image => 'abe',
			link => 'https://twitter.com/abeyang',
		},{
			name => 'Thom van der Weerd',
			title => 'Design',
			info => 'Pixel Whisperer',
			image => 'thom',
			link => 'http://thomweerd.com/',
		},{
			name => 'Zaahir Moolla',
			title => 'Platform',
			info => 'Tool Connoisseur',
			image => 'zaahir',
			link => 'https://zaahir.ca',
		},{
			name => 'Tommy Leung',
			title => 'Search',
			info => 'Amateur Chef',
			image => 'tommy',
			link => 'http://www.tommyleung.com',
		},{
			name => 'Brian Buttrick',
			title => 'Search',
			info => 'For Science',
			image => 'B2',
			link => 'https://www.youtube.com/watch?v=NfG47NsWVYA',
		},{
			name => 'Zach Thompson',
			title => 'Platform',
			info => '42',
			image => 'zach',
			link => 'http://apod.nasa.gov/apod/',
		},{
			name => 'Adam Cochran',
			title => 'BizDev',
			info => 'Nerd-in-Residence',
			image => 'adam',
			link => 'http://nerdflock.com/',
		},{
			name => 'We’re hiring',
			msg => 'Come work with us!',
			icon => 'person-alt',
			link => 'https://duck.co/help/company/hiring',
		}],
		
		ddg_events => [{
			date => 'February 29, 2008',
			title => 'We Hatched',
			snippet => 'DuckDuckGo began as a idea for a better search experience with more instant answers and less spam. We hatched out of a few servers in a dusty basement.',
			type => 'company',
			icon => 'idea-b',
			year => '2008',
		},{
			date => 'September 25, 2008',
			title => 'Launch!',
			snippet => 'Within the year, DuckDuckGo was announced to the Hacker News and reddit communities. We made it out with only minor troll scars.',
			type => 'news',
			icon => 'launch',
		},{
			date => 'January 22, 2009',
			title => 'Anonymous',
			snippet => 'We decided to make a bold move and not collect or share any of your personal information.',
			type => 'news',
			icon => 'privacy',
			year => '2009',
		},{
			date => 'July 21, 2010',
			title => 'Duck.co',
			snippet => 'With the launch of our community site duck.co, you now had a place to flock and really make DuckDuckGo the people’s search engine.',
			type => 'news',
			icon => 'community',
			year => '2010',
		},{
			date => 'January 11, 2011',
			title => 'The Billboard',
			snippet => 'We told the world “Google tracks you. We don’t” with a billboard in their backyard.',
			type => 'news',
			icon => 'billboard',
			year => '2011',
		},{
			date => 'February 26, 2011',
			title => '2011 Donations',
			snippet => 'We rely on a lot of great free and open-source projects to keep our wings flapping. So we decided to start giving back, donating to nginx, FreeBSD, Tor, Clamwin, Tahoe-LAFS and OpenSSH.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		},{
			date => 'November 30, 2011',
			title => 'Employee #1',
			snippet => 'For years our founder Gabriel was the only full-timer. Caine Tighe changed all that, coming on board as our first official employee and jedi master.',
			type => 'company',
			icon => 'growth',
		},{
			date => 'December 1, 2011',
			title => 'Headquarters',
			snippet => 'We finally moved out of Gabriel’s basement into our fortress in Paoli, PA, USA. It really does look like a castle!',
			type => 'company',
			icon => 'company-b',
		},{
			date => 'January 16, 2012',
			title => 'Redesign',
			snippet => 'Our first major visual overhaul introduced a new design that made you not want to close your browser the second you saw our results page. ',
			type => 'news',
			icon => 'design',
			year => '2012',
		},{
			date => 'February 13, 2012',
			title => '1,000,000!',
			snippet => 'Reaching 1 million searches a day was a major milestone for us, having steadily grown from 100 to 1,000 to 10,000 to 100,000 and finally to 1,000,000. That’s more than 10 searches a second!',
			type => 'traffic',
			icon => 'growth',
		},{
			date => 'March 7, 2012',
			title => '2012 Donations',
			snippet => 'For our second year of open-source donations we chose the theme “open data/information.” The company-directed portion went to Tor and the Wikimedia foundation. The community-directed portion went to unhosted.org, the Diaspora project, Freenet, and friendica.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		},{
			date => 'May 1, 2012',
			title => 'DuckDuckHack',
			snippet => 'Our vision of getting you the best instant answers from the best sources finally merged with our vibrant community when we introduced DuckDuckHack: our open-source platform where anyone can suggest or create instant answers for our results.',
			type => 'news',
			icon => 'community',
		},{
			date => 'February 25, 2013',
			title => '2013 Donations',
			snippet => 'Our 3rd year of open-source donations were under the theme of “fix tracking.” The company portion went to the Open Street Map Foundation and the Electronic Frontier Foundation. The community directed donations to Riseup, F-Droid, NoScript, Cryptocat, and Javascript Blocker. ',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
			year => '2013',
		},{
			date => 'June 10, 2013',
			title => '2,000,000',
			snippet => '483 days after reaching one million, we doubled our daily searches. This milestone happened days after people started sharing private alternatives (like us) in the wake of the NSA revelations. ',
			type => 'traffic',
			icon => 'growth',
		},{
			date => 'June 17, 2013',
			title => '3,000,000',
			snippet => 'Just eight days after hitting two million searches per day, we added another million. To put this in perspective, it took 1,445 days to get to one million from the day we launched.',
			type => 'traffic',
			icon => 'growth',
		},{
			date => 'June 27, 2013',
			title => 'Search & Stories',
			snippet => 'DuckDuckGo delivers an app that gives you the most interesting stories of the day packed with a convenient way to search. TIME ranked it in their, “Top 50 iPhone apps of 2013.”',
			type => 'news',
			icon => 'stories',
		},{
			date => 'August 19, 2013',
			title => '4,000,000',
			snippet => 'Just over two months after hitting two million searches/day, we doubled our traffic again. People start to realize we’re not a Chinese restaurant.',
			type => 'traffic',
			icon => 'growth',
		},{
			date => 'February 26, 2014',
			title => '5,000,000',
			snippet => 'Five million direct searches in one day. That’s 150 million a month, 1.825 billion a year!',
			type => 'traffic',
			icon => 'growth',
			year => '2014',
		},{
			date => 'March 12, 2014',
			title => '2014 Donations',
			snippet => 'Needed more than ever, our 2014 donation theme was, “secure communications.” Our company directed portion went to SecureDrop and NoiseTor. The community directed donations went to Lavabit, Riseup, Mailpile, and I2P.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		},{
			date => 'March 17, 2014',
			title => 'Employee #10',
			snippet => 'We have thousands of fewer employees than the big guys, but each one is part of our family and grew out of our community. Brian Stoner joined us just in time!',
			type => 'company',
			icon => 'growth',
		},{
			date => 'May 19, 2014',
			title => 'Reimagined',
			snippet => 'DuckDuckGo launches a reimagined and redesigned search engine with a refined look and a focus on smarter answers.',
			type => 'company',
			icon => 'design',
		},{
			date => 'September 17, 2014',
			title => 'Safari',
			snippet => 'Apple begins including DuckDuckGo in Safari, with the launch of iOS 8 and OS X Yosemite. Wow, that was cool.',
			type => 'company',
			icon => 'growth',
		},{
			date => 'November 10, 2014',
			title => 'Firefox',
			snippet => 'Mozilla adds DuckDuckGo as a built-in option to Firefox and Firefox OS. Do you think we’ll ever get into Chrome?',
			type => 'company',
			icon => 'growth',
		},{
			date => 'March 20, 2015',
			title => '2015 Donations',
			snippet => 'For our fifth year of free and open source donations, we divided $125,000 equally over five projects: SecureDrop, PrivacyBadger, GPGTools, Tails, and Girl Develop It.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
			year => '2015',
		},{
			date => 'March 23, 2015',
			title => '9,000,000',
			snippet => 'How should we celebrate when we hit 10,000,000 searches a day? We can see the light.',
			type => 'traffic',
			icon => 'growth',
		}],
		
		news_articles => [{
			source => 'fastco',
			source_full => 'FastCoLabs',
			source_link => 'http://www.fastcolabs.com/3026698/inside-duckduckgo-googles-tiniest-fiercest-competitor',
			author_name => 'John Paul Titlow',
			date => '20 February 2014',
			headline => 'Inside DuckDuckGo, Google’s Tiniest, Fiercest Competitor',
			snippet => 'In 2008, launching a search engine seemed like a crazy idea.  Here’s how Gabriel Weinberg proved the critics wrong.',
		},{
			source => 'theguardian',
			source_full => 'The Observer',
			source_link => 'http://www.theguardian.com/technology/2014/apr/04/duckduckgo-gabriel-weinberg-secure-searches',
			author_name => 'Alex Hern',
			date => '4 April 2014',
			headline => 'DuckDuckGo: the plucky upstart taking on Google with secure searches',
			snippet => 'Gabriel Weinberg launched DuckDuckGo as a search engine that puts privacy first, rather than collecting data for advertisers and security agencies...',
		},{
			source => 'wapost',
			source_full => 'The Washington Post',
			source_link => 'http://www.washingtonpost.com/business/ducking-google-in-search-engines/2012/11/09/6cf3af10-2842-11e2-bab2-eda299503684_story.html',
			author_name => 'Michael Rosenwald',
			date => '9 November 2012',
			headline => 'Ducking Google in search engines',
			snippet => 'Not far from Valley Forge, around the corner from Bravo Pizza, up the road from Paoli Auto Body, there is an odd-looking office building that resembles a stone castle.  An eye doctor is on the first floor.  On the second floor is a search engine.',
		}]
	},
	bang => sub {},
	index => sub {
		no_wrapper => 1,
		homepage => 1,
	},
	newbang => sub {},
	params => sub {},
	settings => sub {
		js_skip_init => 1,
		js_include_g => 1,
	},
	styleguide => sub {
		copyright_footer => 1,
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		hero_header => 1,
		hero_header_text => 1,
		css_serp => 1,
		icons => ['loupe','menu','region','star','music','marker','home','more','eye','check','cry','clock','user','users','comment','plus','minus','close','close-bold','move','grid','uploaded','upload','download','heart','play','pause','t-up','t-down','t-left','t-right','prev','next','left','right','down','up','left-big','right-big','check-sign','right-sign','left-sign','more-sign','less-sign'],
		colors => ['white','silver-light','silver','silver-dark','platinum-light','platinum','platinum-dark','platinum-darker','grey-light','grey','grey-dark','slate-light','slate','red-light','red','red-dark','blue-light','blue','blue-dark','green','gold','purple',],
	},
	spread => sub {
		copyright_footer => 2,
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		hero_header => 1,
		hero_header_text => 1,
		js_page_type => 'Spread',
	},
	tour => sub {
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		hero_header => 1,
		hero_header_text => 1,
		js_page_type => 'Tour',
	},

	## TODO

	api => sub {},
	duckduckbot => sub {},
	duckduckpreview => sub {},
	feedback => sub {
		no_logo => 1,
	},
	privacy => sub {
		copyright_footer => 1,
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		hero_header => 1,
		hero_header_text => 1,
	},
	search_box => sub {},

}}

sub statics {{
	"50x" => sub {
		no_wrapper => 1,
		homepage => 1,
	},
}}

1;
