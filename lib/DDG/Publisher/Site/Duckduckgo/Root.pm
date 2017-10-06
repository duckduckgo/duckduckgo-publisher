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
		ddg_events => [{
			date => 'February 29, 2008',
			title => 'We Hatched',
			snippet => 'DuckDuckGo began as an idea for a better search experience with more instant answers and less spam. We hatched out of a few servers in a dusty basement.',
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
			date => 'June 22, 2015',
			title => '10,000,000',
			snippet => 'Boom! 10 million searches in a single day (10,210,082 to be exact). To celebrate, we’re giving away 10,000 DuckDuckGo T-shirts!',
			type => 'traffic',
			icon => 'growth',
		},{
			date => 'May 3, 2016',
			title => '2016 Donations',
			snippet => 'For our sixth year of free and open source donations, we divided $225,000 equally over nine projects: SecureDrop, Freenet, OpenBSD Foundation, CrypTech, Tor Project, Fight for the Future, VeraCrypt, LEAP, GPGTools.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
			year => '2016',
		},{
			date => 'December 31, 2016',
			title => '10 Billion Searches & Counting!',
			snippet => 'We concluded the year by announcing we surpassed a cumulative count of 10 billion anonymous searches served, with over 4 billion in 2016!',
			type => 'traffic',
			icon => 'growth',
		},{
			date => 'February 6, 2017',
			title => '15,000,000',
			snippet => '15 million searches in a single day (15,106,357 to be exact). More and more privacy conscious searchers have #ComeToTheDuckSide.',
			type => 'traffic',
			icon => 'growth',
			year => '2017',
		},{
			date => 'February 10, 2017',
			title => '2017 Donations',
			snippet => 'For our seventh year of free and open source donations, we divided $300,000 over sixteen projects including: Freedom of the Press Foundation, World Privacy Forum, Open Whisper Systems, Privacy Rights Clearinghouse, Tor Project and Electronic Frontier Foundation (EFF).',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		}],

		news_articles => [{
			source => 'fastco',
			source_full => 'FastCoLabs',
			source_link => 'https://www.fastcompany.com/3026698/inside-duckduckgo-googles-tiniest-fiercest-competitor',
			author_name => 'John Paul Titlow',
			date => '20 February 2014',
			headline => 'Inside DuckDuckGo, Google’s Tiniest, Fiercest Competitor',
			snippet => 'In 2008, launching a search engine seemed like a crazy idea.  Here’s how Gabriel Weinberg proved the critics wrong.',
		},{
			source => 'theguardian',
			source_full => 'The Observer',
			source_link => 'https://www.theguardian.com/technology/2014/apr/04/duckduckgo-gabriel-weinberg-secure-searches',
			author_name => 'Alex Hern',
			date => '4 April 2014',
			headline => 'DuckDuckGo: the plucky upstart taking on Google with secure searches',
			snippet => 'Gabriel Weinberg launched DuckDuckGo as a search engine that puts privacy first, rather than collecting data for advertisers and security agencies...',
		},{
			source => 'wapost',
			source_full => 'The Washington Post',
			source_link => 'https://www.washingtonpost.com/business/ducking-google-in-search-engines/2012/11/09/6cf3af10-2842-11e2-bab2-eda299503684_story.html',
			author_name => 'Michael Rosenwald',
			date => '9 November 2012',
			headline => 'Ducking Google in search engines',
			snippet => 'Not far from Valley Forge, around the corner from Bravo Pizza, up the road from Paoli Auto Body, there is an odd-looking office building that resembles a stone castle.  An eye doctor is on the first floor.  On the second floor is a search engine.',
		}]
	},
	bang => sub {
		copyright_footer => 1,
		nav_footer => 1,
		no_footer_arrow => 1,
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		hero_header => 1,
		hero_header_text => 1,
		js_page_type => 'Bang',
		js_bang_version => 1
	},
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
		icons => ['alert','arrow-down','arrow-left','arrow-right','arrow-top','arrow-up','check','check-sign','circle','clock','close','close-bold','cloudsave','comment','cry','down','download','eye','football','grid','heart','home','info','left','left-big','left-sign','less-sign','loupe','marker','menu','minus','more','more-sign','move','music','news','next','pause','play','plus','prev','region','right','right-big','right-sign','star','swap','t-down','t-left','t-right','t-up','up','upload','uploaded','user','users',],
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
	iframe => sub {
		 copyright_footer => 0,
		 no_content_internal => 1,
		 no_spacer => 1,
		 no_cw => 1,
		 no_search_header => 1,
		 hero_header => 0,
		 hero_header_text => 0,
		 js_page_type => 'Iframe',
	},
	tour => sub {
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		hero_header => 1,
		hero_header_text => 1,
		js_page_type => 'Tour',
	},
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
		js_page_type => 'Privacy',
	},
	search_box => sub {},
	yahoo_static => sub {
		no_content_internal => 1,
		no_spacer => 1,
		no_cw => 1,
		no_header => 1,
		hero_header => 1,
		no_js => 1,
	},
	install => sub {
		no_header => 1,
		no_cw => 1,
		no_spacer => 1,
		no_content_internal => 1,
		js_skip_init => 1
	},
	foss => sub {
		nav_footer => 1,
		no_footer_arrow => 1,
		copyright_footer => 1,
		no_content_internal => 1,
		no_spacer => 1,
		hero_header => 1,
		hero_header_text => 1,
		foss_donations => [{
			year => '2017',
			total => '$300,000',
			theme => 'Privacy Eduaction',
			snippet => 'For our seventh year of free and open source donations, we divided our donations over sixteen organizations:',
			donations => {
				col1 => [
					{amount => '$100,000', recipient => 'Freedom of the Press Foundation'},
					{amount => '$75,000', recipient => 'World Privacy Forum'},
					{amount => '$29,000', recipient => 'Open Whisper Systems'},
					{amount => '$25,000', recipient => 'Privacy Rights Clearinghouse'},
					{amount => '$25,000', recipient => 'TOR Project'},
					{amount => '$25,000', recipient => 'The Electronic Frontier Foundation'},
					{amount => '$5,000', recipient => 'American Civil Liberties Union (ACLU)'},
					{amount => '$5,000', recipient => 'Access Now'},
				],
				col2 => [
					{amount => '$25,00', recipient => 'The Calyx Institute'},
					{amount => '$25,00', recipient => 'Center for Democracy & Technology'},
					{amount => '$1,000', recipient => 'Restore the Fourth'},
					{amount => '$1,000', recipient => 'Center for Digital Democracy (CDD)'},
					{amount => '$1,000', recipient => 'Patent Privacy Rights'},
					{amount => '$1,000', recipient => 'Online Trust Alliance (OTA)'},
					{amount => '$1,000', recipient => 'Tech Freedom'},
					{amount => '$1,000', recipient => 'Demand Progress'},
				]
			}
		},{
			year => '2016',
			total => '$225,000',
			theme => 'Increasing Trust',
			snippet => 'For our sixth year of donations we divided $225K equally over the following nine organizations:',
			donations => {
				col1 => [
					{amount => '$25,000', recipient => 'SecureDrop'},
					{amount => '$25,000', recipient => 'Freenet'},
					{amount => '$25,000', recipient => 'OpenBSD Foundation'},
					{amount => '$25,000', recipient => 'CrypTech'},
					{amount => '$25,000', recipient => 'TOR Project'},
				],
				col2 => [
					{amount => '$25,000', recipient => 'Fight for the Future'},
					{amount => '$25,000', recipient => 'VeraCrypt'},
					{amount => '$25,000', recipient => 'LEAP'},
					{amount => '$25,000', recipient => 'GPGTools'},
				]
			}
		},{
			year => '2015',
			total => '$125,000',
			theme => 'Privacy Tools',
			snippet => 'For our fifth year of donations we divided $125K equally over the following five organizations:',
			donations => {
				col1 => [
					{amount => '$25,000', recipient => 'SecureDrop'},
					{amount => '$25,000', recipient => 'PrivacyBadger'},
					{amount => '$25,000', recipient => 'GPGTools'},
				],
				col2 => [
					{amount => '$25,000', recipient => 'Tails'},
					{amount => '$25,000', recipient => 'Girl Develop It'},
				]
			}
		},{
			year => '2014',
			total => '$40,000',
			theme => 'Secure Communications',
			snippet => 'For our fourth year of donations we divided $40K over the six organizations, with four of the recipients chosen by our community:',
			donations => {
				col1 => [
					{amount => '$10,000', recipient => 'SecureDrop'},
					{amount => '$10,000', recipient => 'NoiseTor'},
					{amount => '$5,000', recipient => 'Lavabit'},
				],
				col2 => [
					{amount => '$5,000', recipient => 'Riseup'},
					{amount => '$5,000', recipient => 'Mailpile'},
					{amount => '$5,000', recipient => 'I2P'},
				]
			}
		},{
			year => '2013',
			total => '$20,000',
			theme => 'Fix Tracking',
			snippet => 'For our third year of donations we divided $20K over the seven organizations, with five of the recipients chosen by our community:',
			donations => {
				col1 => [
					{amount => '$5,000', recipient => 'Open Street Map Foundation'},
					{amount => '$5,000', recipient => 'Electronic Frontier Foundation'},
					{amount => '$2,000', recipient => 'Riseup'},
					{amount => '$2,000', recipient => 'F-Droid'},
				],
				col2 => [
					{amount => '$2,000', recipient => 'NoScript'},
					{amount => '$2,000', recipient => 'Cryptocat'},
					{amount => '$2,000', recipient => 'Javascript Blocker'},
				]
			}
		},{
			year => '2012',
			total => '$10,000',
			theme => 'Open Data',
			snippet => 'For our second year of donations we divided $10K over the six organizations, with four of the recipients chosen by our community:',
			donations => {
				col1 => [
					{amount => '$5,000', recipient => 'TOR Project'},
					{amount => '$5,000', recipient => 'Wikimedia foundation'},
					{amount => '$2,000', recipient => 'unhosted.org'},
				],
				col2 => [
					{amount => '$2,000', recipient => 'Diaspora Project'},
					{amount => '$2,000', recipient => 'Freenet'},
					{amount => '$2,000', recipient => 'friendica'},
				]
			}
		},{
			year => '2011',
			total => '$20,000',
			theme => 'Privacy Open Sorce',
			snippet => 'For our first year of donations, with the understanding that we rely on a lot of great free and open-source projects to keep our wings flapping, we decided to start giving back: ',
			donations => {
				col1 => [
					{amount => '$5,000', recipient => 'nginx'},
					{amount => '$5,000', recipient => 'FreeBSD'},
					{amount => '$2,000', recipient => 'TOR Project'},
				],
				col2 => [
					{amount => '$2,000', recipient => 'Clamwin'},
					{amount => '$2,000', recipient => 'Tahoe-LAFS'},
					{amount => '$2,000', recipient => 'OpenSSH'},
				]
			}
		}],
	}
}}

sub statics {{
	"50x" => sub {
		no_wrapper => 1,
		homepage => 1,
	},
}}

1;
