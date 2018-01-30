package DDG::Publisher::Site::Duckduckgo::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	about => sub {
		about_footer => 1,
		copyright_footer => 1,
		copyright_text => 'Privacy, simplified.',
		no_content_internal => 1,
		no_spacer => 1,
		hero_header => 1,
		no_hero_header_icon => 1,
		no_cw => 1,
		js_page_type => 'About',
		ddg_events => [{
			date => 'February 29, 2008',
			title => 'We Hatched',
			snippet => 'DuckDuckGo began as an idea for a better search engine experience. We hatched out of a few servers in a dusty basement.',
			type => 'company',
			icon => 'idea-2',
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
			snippet => 'We decided to make a bold move and not track your search history. Tracking is creepy.',
			type => 'news',
			icon => 'privacy',
			year => '2009',
		},{
			date => 'January 11, 2011',
			title => 'The Billboard',
			snippet => 'We told the world “Google tracks you. We don’t.” with a billboard in their backyard. Hello, World!',
			type => 'news',
			icon => 'billboard',
			year => '2011',
		},{
			date => 'February 26, 2011',
			title => '2011 Donations',
			snippet => 'We rely on a lot of great projects to keep our wings flapping. So we decided to start giving back, donating to nginx, FreeBSD, Tor Project, Clamwin, Tahoe-LAFS and OpenSSH.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
		},{
			date => 'November 30, 2011',
			title => 'Employee #1',
			snippet => 'For years our founder Gabriel was the only full-timer. Caine Tighe changed all that, coming on board as our first official employee.',
			type => 'company',
			icon => 'person',
		},{
			date => 'December 1, 2011',
			title => 'Headquarters',
			snippet => 'We finally moved out of Gabriel’s basement into our fortress in Paoli, PA. It really looks like a castle!',
			type => 'company',
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
			snippet => 'For our second year of donations we chose the theme “open data/information,” donating to Tor, The Wikimedia Foundation, unhosted.org, Diaspora, Freenet, and friendica.',
			type => 'company',
			subtype => 'foss',
			icon => 'gift',
		},{
			date => 'February 25, 2013',
			title => '2013 Donations',
			snippet => 'The theme for our third year of donations was “fix tracking,” with donations to OpenStreetMap, the Electronic Frontier Foundation, Riseup, F-Droid, NoScript, Cryptocat, and Javascript Blocker. ',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
			year => '2013',
		},{
			date => 'June 10, 2013',
			title => '2,000,000',
			snippet => '483 days after reaching one million, we doubled our daily searches. This milestone happened days after people started sharing private alternatives (like us) in the wake of the NSA revelations. ',
			type => 'traffic',
			icon => 'leader',
		},{
			date => 'June 17, 2013',
			title => '3,000,000',
			snippet => 'Just eight days after hitting two million searches per day, we added another million. To put this in perspective, it took 1,445 days to get to one million from the day we launched.',
			type => 'traffic',
			icon => 'growth',
		},{
			date => 'March 12, 2014',
			title => '2014 Donations',
			snippet => 'Needed more than ever, our 2014 donation theme was “secure communications,” donating to SecureDrop, NoiseTor, Lavabit, Riseup, Mailpile, and the Invisible Internet Project.',
			type => 'company',
			subtype => 'foss',
			icon => 'gift',
			year => '2014',
		},{
			date => 'March 17, 2014',
			title => 'Employee #10',
			snippet => 'The big guys have thousands more employees than us, and so everyone at DuckDuckGo is an essential member of the team. Welcome Brian Stoner!',
			type => 'company',
			icon => 'photos',
		},{
			date => 'May 19, 2014',
			title => 'Reimagined',
			snippet => "DuckDuckGo launches a redesigned search engine with a refined look and a focus on smarter answers. And, of course, we still don't track you.",
			type => 'company',
			icon => 'search-lock',
		},{
			date => 'September 17, 2014',
			title => 'Safari',
			snippet => 'Apple begins including DuckDuckGo in Safari, with the launch of iOS 8 and OS X Yosemite. Wow, cool!',
			type => 'company',
			icon => 'computer',
		},{
			date => 'November 10, 2014',
			title => 'Firefox',
			snippet => "Mozilla adds DuckDuckGo as a built-in search option to Firefox. Thank you! Do you think we’ll ever get into Chrome? Don't hold your breath.",
			type => 'company',
			icon => 'build',
		},{
			date => 'March 20, 2015',
			title => '2015 Donations',
			snippet => 'In our fifth donation year, we divided $125,000 equally over five projects: SecureDrop, Privacy Badger, GPGTools, Tails, and Girl Develop It.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
			year => '2015',
		},{
			date => 'June 22, 2015',
			title => '10,000,000',
			snippet => 'Boom! 10 million searches in a single day (10,210,082 to be exact). To celebrate, we gave away a ton of DuckDuckGo T-shirts!',
			type => 'traffic',
			icon => 'contact',
		},{
			date => 'May 3, 2016',
			title => '2016 Donations',
			snippet => 'We divided $225,000 equally over nine projects: SecureDrop, Freenet, OpenBSD Foundation, CrypTech, Tor Project, Fight for the Future, VeraCrypt, LEAP, GPGTools.',
			type => 'company',
			subtype => 'foss',
			icon => 'gift',
			year => '2016',
		},{
			date => 'December 31, 2016',
			title => '10 Billion Searches!',
			snippet => 'We concluded 2016 with over four billion anonymous searches served, surpassing a cumulative count of ten billion!',
			type => 'traffic',
			icon => 'leader',
		},{
			date => 'February 10, 2017',
			title => '2017 Donations',
			snippet => 'We divided $400,000 over sixteen projects including: Freedom of the Press Foundation, World Privacy Forum, Open Whisper Systems, Privacy Rights Clearinghouse, Tor Project and the Electronic Frontier Foundation.',
			type => 'company',
			subtype => 'foss',
			icon => 'love',
			year => '2017',
		},{
			date => 'November 13, 2017',
			title => '20,000,000',
			snippet => 'Over 20 million searches in a single day. Privacy is mainstream and more and more privacy conscious people have #ComeToTheDuckSide.',
			type => 'traffic',
			icon => 'privacy',
		},{
			date => 'January 23, 2018',
			title => 'Protection Beyond Search',
			snippet => 'We extended our privacy protection beyond the search box with the launch of our new mobile app & browser extension, available on all major platforms.',
			type => 'priacy',
			icon => 'key',
			year => '2018',
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
	app => sub {
		nav_footer => 0,
		no_footer_arrow => 1,
		copyright_footer => 0,
		no_content_internal => 1,
		no_spacer => 1,
		hero_header => 1,
		no_hero_header_icon => 1,
		js_page_type => 'Addons',
		about_footer => 1,
		copyright_footer => 1,
		copyright_text => 'Privacy, simplified.',
	},
	donations => sub {
		nav_footer => 1,
		no_footer_arrow => 1,
		copyright_footer => 1,
		no_content_internal => 1,
		no_spacer => 1,
		hero_header => 1,
		hero_header_text => 1,
		yearly_donations => [{
			year => '2017',
			total => '$400,000',
			theme => 'Privacy Education',
			snippet => 'In our seventh year of privacy donations, we concentrated on efforts to educate people about privacy.',
			donations => {
				col1 => [
					{amount => '$200,000', recipient => 'Freedom of the Press Foundation', url => 'https://freedom.press'},
					{amount => '$75,000', recipient => 'World Privacy Forum', url => 'https://www.worldprivacyforum.org'},
					{amount => '$29,000', recipient => 'Open Whisper Systems', url => 'https://signal.org'},
					{amount => '$25,000', recipient => 'Privacy Rights Clearinghouse', url => 'https://www.privacyrights.org'},
					{amount => '$25,000', recipient => 'Tor Project', url => 'https://www.torproject.org'},
					{amount => '$25,000', recipient => 'The Electronic Frontier Foundation', url => 'https://www.eff.org'},
					{amount => '$5,000', recipient => 'American Civil Liberties Union (ACLU)', url => 'https://www.aclu.org'},
					{amount => '$5,000', recipient => 'Access Now', url => 'https://www.accessnow.org'},
				],
				col2 => [
					{amount => '$2,500', recipient => 'The Calyx Institute', url => 'https://www.calyxinstitute.org/'},
					{amount => '$2,500', recipient => 'Center for Democracy & Technology', url => 'https://cdt.org/'},
					{amount => '$1,000', recipient => 'Restore the Fourth', url => 'https://restorethe4th.com/'},
					{amount => '$1,000', recipient => 'Center for Digital Democracy (CDD)', url => 'https://www.democraticmedia.org/'},
					{amount => '$1,000', recipient => 'Patient Privacy Rights', url => 'https://patientprivacyrights.org/'},
					{amount => '$1,000', recipient => 'Online Trust Alliance (OTA)', url => 'https://otalliance.org/'},
					{amount => '$1,000', recipient => 'Tech Freedom', url => 'http://techfreedom.org/'},
					{amount => '$1,000', recipient => 'Demand Progress', url => 'https://demandprogress.org/'},
				]
			}
		},{
			year => '2016',
			total => '$225,000',
			theme => 'Increasing Trust',
			snippet => 'Our sixth year of privacy donations were distributed among causes that are increasing the ability to trust the internet.',
			donations => {
				col1 => [
					{amount => '$25,000', recipient => 'SecureDrop', url => 'https://securedrop.org'},
					{amount => '$25,000', recipient => 'Freenet', url => 'https://freenetproject.org'},
					{amount => '$25,000', recipient => 'OpenBSD Foundation', url => 'http://www.openbsdfoundation.org'},
					{amount => '$25,000', recipient => 'CrypTech', url => 'https://cryptech.is'},
					{amount => '$25,000', recipient => 'Tor Project', url => 'https://www.torproject.org'},
				],
				col2 => [
					{amount => '$25,000', recipient => 'Fight for the Future', url => 'https://www.fightforthefuture.org'},
					{amount => '$25,000', recipient => 'VeraCrypt', url => 'https://veracrypt.codeplex.com'},
					{amount => '$25,000', recipient => 'LEAP', url => 'https://leap.se/'},
					{amount => '$25,000', recipient => 'GPGTools', url => 'https://gpgtools.org'},
				]
			}
		},{
			year => '2015',
			total => '$125,000',
			theme => 'Privacy Tools',
			snippet => 'For our fifth year of privacy donations we aimed to help improve privacy tools used by journalists.',
			donations => {
				col1 => [
					{amount => '$25,000', recipient => 'SecureDrop', url => 'https://securedrop.org'},
					{amount => '$25,000', recipient => 'Privacy Badger', url => 'https://www.eff.org/privacybadger'},
					{amount => '$25,000', recipient => 'GPGTools', url => 'https://gpgtools.org'},
				],
				col2 => [
					{amount => '$25,000', recipient => 'Tails', url => 'https://tails.boum.org'},
					{amount => '$25,000', recipient => 'Girl Develop It', url => 'https://www.girldevelopit.com'},
				]
			}
		},{
			year => '2014',
			total => '$40,000',
			theme => 'Secure Communications',
			snippet => 'In our fourth year of privacy donations, we focused on organizations dedicated to improving secure communications.',
			donations => {
				col1 => [
					{amount => '$10,000', recipient => 'SecureDrop', url => 'https://securedrop.org'},
					{amount => '$10,000', recipient => 'NoiseTor', url => 'http://noisetor.net'},
					{amount => '$5,000', recipient => 'Lavabit', url => 'https://lavabit.com'},
				],
				col2 => [
					{amount => '$5,000', recipient => 'Riseup', url => 'https://riseup.net'},
					{amount => '$5,000', recipient => 'Mailpile', url => 'https://www.mailpile.is'},
					{amount => '$5,000', recipient => 'I2P', url => 'https://geti2p.net/en'},
				]
			}
		},{
			year => '2013',
			total => '$20,000',
			theme => 'Fix Tracking',
			snippet => 'Our third year of privacy donations went towards assisting projects developing tools for people to escape pervasive tracking online.',
			donations => {
				col1 => [
					{amount => '$5,000', recipient => 'OpenStreetMap Foundation', url => 'https://wiki.osmfoundation.org/wiki/Main_Page'},
					{amount => '$5,000', recipient => 'Electronic Frontier Foundation', url => 'https://www.eff.org'},
					{amount => '$2,000', recipient => 'Riseup', url => 'https://riseup.net'},
					{amount => '$2,000', recipient => 'F-Droid', url => 'https://f-droid.org'},
				],
				col2 => [
					{amount => '$2,000', recipient => 'NoScript', url => 'https://noscript.net'},
					{amount => '$2,000', recipient => 'Cryptocat', url => 'https://crypto.cat'},
					{amount => '$2,000', recipient => 'Javascript Blocker', url => 'http://jsblocker.toggleable.com'},
				]
			}
		},{
			year => '2012',
			total => '$10,000+',
			theme => 'Open Data',
			snippet => 'For our second year of privacy donations we chose projects that were helping people freely access information.',
			donations => {
				col1 => [
					{amount => '$6000', recipient => 'Multiple Perl Events', url => 'https://www.perl.org/'},
					{amount => '$940', recipient => 'Tor Project', url => 'https://www.torproject.org'},
					{amount => '$940', recipient => 'Wikimedia foundation', url => 'https://wikimediafoundation.org/wiki/Home'},
					{amount => '$940', recipient => 'unhosted.org', url => 'https://unhosted.org'},
				],
				col2 => [
					{amount => '$940', recipient => 'Diaspora Project', url => 'https://diasporafoundation.org'},
					{amount => '$940', recipient => 'Freenet', url => 'https://freenetproject.org'},
					{amount => '$940', recipient => 'friendica', url => 'https://friendi.ca'},
				]
			}
		},{
			year => '2011',
			total => '$1,909',
			theme => 'Privacy Open Source',
			snippet => 'In our first year of privacy donations, we donated mainly to privacy open source projects that we used to build DuckDuckGo.',
			donations => {
				col1 => [
					{amount => '$482', recipient => 'nginx', url => 'https://www.nginx.com'},
					{amount => '$475', recipient => 'FreeBSD', url => 'https://www.freebsd.org'},
					{amount => '$238', recipient => 'Tor Project', url => 'https://www.torproject.org'},
				],
				col2 => [
					{amount => '$238', recipient => 'Clamwin', url => 'http://www.clamwin.com'},
					{amount => '$238', recipient => 'Tahoe-LAFS', url => 'https://tahoe-lafs.org/trac/tahoe-lafs'},
					{amount => '$238', recipient => 'OpenSSH', url => 'https://www.openssh.com'},
				]
			}
		}],
	},
	press => sub {
		about_footer => 1,
		no_footer_arrow => 1,
		copyright_footer => 1,
		copyright_text => 'Privacy, simplified.',
		no_content_internal => 1,
		no_spacer => 1,
		hero_header => 1,
		no_hero_header_icon => 1,
		js_page_type => 'Press',
	}
}}

sub statics {{
	"50x" => sub {
		no_wrapper => 1,
		homepage => 1,
	},
}}

1;
