package DDG::Publisher::Site::Duckduckgo::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	about => sub {
		copyright_footer => 1,
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		alt_header => 1,
		alt_header_text => 1,
		menu_show_press => 1,
		menu_hide_themes => 1,
		team_members => [{
			name => 'Gabriel Weinberg',
			title => 'Founder',
			info => 'Family guy',
			image => 'gabriel',
			link => 'https://twitter.com/yegg/',
		},{
			name => 'Caine Tighe',
			title => 'Core Components',
			info => 'Border Collie',
			image => 'caine',
			link => 'http://opensesame.st/',
		},{
			name => 'Zac Pappis',
			title => 'Duck.co',
			info => 'Lead Vocalist',
			image => 'zac',
			link => 'https://twitter.com/zacpappis',
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
			link => 'https://twitter.com/sdougbrown',
		},{
			name => 'Chris Morast',
			title => 'Design',
			info => 'Margarita Enthusiast',
			image => 'chris',
			link => 'http://christophermorast.com/',
		},{
			name => 'Jag Talon',
			title => 'Open Source',
			info => 'Internet Survival Expert',
			image => 'jag',
			link => 'https://twitter.com/juantalon',
		},{
			name => 'Brian Stoner',
			title => 'Front-End',
			info => 'Person',
			image => 'brian',
			link => 'https://twitter.com/bsstoner',
		},{
			name => 'John Barrett',
			title => 'Duck.co',
			info => 'Discombobulator',
			image => 'john',
			link => 'https://github.com/jbarrett/',
		}],
		
		ddg_events => [{
			date => 'October 29, 2007',
			title => 'The Beginning',
			snippet => 'DuckDuckGo all started with the name and an idea to make answers easier to find.',
			type => 'company',
			icon => 'idea',
		},{
			date => 'February 29, 2008',
			title => 'It\'s Official',
			snippet => 'In early 2008, Gabriel emerged from his basement with a plan. He soon made it official by incorporating DuckDuckGo.',
			type => 'company',
		},{
			date => 'September 25, 2008',
			title => 'Launch!',
			snippet => 'Within the year, DuckDuckGo was announced to the Hacker News community. We survived!',
			type => 'news',
			icon => 'launch',
		},{
			date => 'January 22, 2009',
			title => 'Anonymous',
			snippet => 'Inspired by conversations on reddit and because search history is so personal, DuckDuckGo decides to take a bold move and not collect or share any personal information on its users.',
			type => 'news',
			icon => 'privacy',
		},{
			date => 'July 21, 2010',
			title => 'Duck.co',
			snippet => 'DuckDuckGo\'s community is its extended team. Duck.co was born from the community\'s need for a centralized place to swap ideas.',
			type => 'news',
			icon => 'community',
		},{
			date => 'January 11, 2011',
			title => 'The Billboard',
			snippet => 'DuckDuckGo delivered a message in the heart of the tech world: a billboard in San Francisco that read "Google tracks you. We don\'t."',
			type => 'news',
			icon => 'billboard',
		},{
			date => 'February 26, 2011',
			title => '2011 Donations',
			snippet => 'DuckDuckGo relies on a lot of great open-source projects to keep our gears spinning. In 2011, we decided to start paying some of that love back to the open-source community, donating to nginx, FreeBSD, Tor, Clamwin, Tahoe-LAFS and OpenSSH.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		},{
			date => 'October 13, 2011',
			title => 'Series "A" Funding',
			snippet => 'Four years in, DuckDuckGo secures funding from Union Square Ventures, a group that shares the same vision of smarter search and real privacy.',
			type => 'company',
		},{
			date => 'November 30, 2011',
			title => 'Employee #1',
			snippet => 'For years Gabriel was the only full-timer. Caine Tighe changed all that, coming on board as our first official employee.',
			type => 'company',
		},{
			date => 'December 1, 2011',
			title => 'Headquarters',
			snippet => 'DuckDuckGo moves out of Gabriel\'s basement and into our fortress in Paoli, PA, USA. It really does look like a castle!',
			type => 'company',
		},{
			date => 'January 16, 2012',
			title => 'Redesign',
			snippet => 'Our first major visual overhaul introduced a new design that made you not want to close your browser the second you saw our results page. ',
			type => 'news',
			icon => 'redesign',
		},{
			date => 'February 13, 2012',
			title => '1,000,000!',
			snippet => 'Reaching 1 million searches a day was a major milestone for us, having steadily grown from 100 to 1,000 to 10,000 to 100,000 and finally to 1,000,000. That\'s more than 10 searches a second!',
			type => 'traffic',
		},{
			date => 'March 7, 2012',
			title => '2012 Donations',
			snippet => 'For our second year of open-source donations we chose the theme "open data/information." The company-directed portion went to Tor and the Wikimedia foundation. The community-directed portion went to unhosted.org, the Diaspora project, Freenet, and friendica.',
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
			snippet => 'Our 3rd year of open-source donations were under the theme of "fix tracking." The company portion went to the Open Street Map Foundation and the Electronic Frontier Foundation. The community directed donations to Riseup, F-Droid, NoScript, Cryptocat, and Javascript Blocker. ',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		},{
			date => 'June 10, 2013',
			title => '2,000,000',
			snippet => '483 days after reaching one million, we doubled our daily searches. This milestone happened days after people started sharing private alternatives (like us) in the wake of the NSA revelations. ',
			type => 'traffic',
		},{
			date => 'June 17, 2013',
			title => '3,000,000',
			snippet => 'Just eight days after hitting two million searches per day, we added another million. To put this in perspective, it took 1,445 days to get to one million from the day we launched.',
			type => 'traffic',
		},{
			date => 'June 27, 2013',
			title => 'Search & Stories',
			snippet => 'DuckDuckGo delivers an app that gives you the most interesting stories of the day packed with a convenient way to search. TIME ranked it in their, "Top 50 iPhone apps of 2013."',
			type => 'news',
		},{
			date => 'August 19, 2013',
			title => '4,000,000',
			snippet => 'Just over two months after hitting two million searches/day, we doubled our traffic again. People start to realize we\'re not a Chinese restaurant.',
			type => 'traffic',
		},{
			date => 'February 26, 2014',
			title => '5,000,000',
			snippet => 'Five million direct searches in one day. That\'s 150 million a month, 1.825 billion a year! We will stop marking each million milestone now.',
			type => 'traffic',
		},{
			date => 'March 12, 2014',
			title => '2014 Donations',
			snippet => 'Needed more than ever, our 2014 donation theme was, "secure communications." Our company directed portion went to SecureDrop and NoiseTor. The community directed donations went to Lavabit, Riseup, Mailpile, and I2P.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		},{
			date => 'March 17, 2014',
			title => 'Employee #10',
			snippet => 'We have tens of thousands of less employees than the big guys, but each one is part of our family and grew out of our community. Brian Stoner joined us just in time!',
			type => 'company',
		},{
			date => 'May 19, 2014',
			title => 'Reimagined',
			snippet => 'DuckDuckGo launches a reimagined and redesigned search engine with a refined look and a focus on smarter answers.',
			type => 'company',
			icon => 'redesign',
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
#	goodies => sub {
#		goodies => 1,
#		no_content_internal => 1,
#	},
	index => sub {
		no_wrapper => 1,
		homepage => 1,
	},
	newbang => sub {},
	params => sub {},
	settings => sub {
		yui_body_header => 1
	},
	supportus => sub {},
	whatsnew => sub {
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		alt_header => 1,
		menu_show_press => 1,
		menu_hide_settings => 1,
		menu_hide_themes => 1,
		answer_types => [{
			title => '<b>DuckDuckGo</b>',
			raw_title => 'DuckDuckGo Redesigned', 
			text => "<span>Introducing the reimagined and redesigned DuckDuckGo.</span> <span>Smarter search, less clutter, and real privacy.</span>",
			type => "redesign",
			link => "/?q=daft+punk",
		},{
			title => "<b>Images</b> & <b>Videos</b>",
			raw_title => 'Images & Videos',
			text => "<span>Images and Videos are always available.</span> <span>View them without leaving the page.</span>",
			type => "images-videos",
			link => "/?q=images+beaches+in+thailand",
		},{
			title => "Find <b>Places</b>",
			raw_title => 'Find Places',
			text => "<span>A better place to start your search for restaurants,</span> <span>or anywhere else you might decide to go.</span>",
			type => "places",
			link => "/?q=thai+food+in+san+francisco",
		},{
			title => "More <b>Meanings</b>",
			raw_title => 'More Meanings',
			text => "<span>When searching ambiguous terms, getting the meaning</span> <span>you want can be difficult. Not anymore.</span>",
			type => "meanings",
			link => "/?q=orange",
		},{
			title => "<b>Recipe</b> Search",
			raw_title => 'Recipe Search',
			text => "<span>Introducing recipe search on DuckDuckGo.</span> <span>A great place to start your next meal.</span>",
			type => "recipes",
			link => "/?q=mozzarella+tomato+salad",
		},{
			title => "<b>Weather</b>",
			raw_title => 'Weather',
			text => "<span>This week's forecast may not look so good,</span> <span>but our instant answer makes it a little better.</span>",
			type => "weather",
			link => "/?q=weather",
		},{
			title => 'Smarter <b>Answers</b>',
			raw_title => 'Smarter Answers',
			text => "<span>Answers to your questions from the best sources,</span> <span>developed by our open source community.</span>",
			type => "answers",
			link => "/?q=what+rhymes+with+duck",
		},{
			title => '<b>Try DuckDuckGo</b>',
			raw_title => 'Try DuckDuckGo',
			hero_form => 1,
			type => "home",
			link => "/",
		}],
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
		alt_header => 1,
		alt_header_text => 1,
		menu_show_press => 1,
		menu_hide_themes => 1,
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
