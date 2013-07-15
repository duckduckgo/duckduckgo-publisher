package DDG::Publisher::Site::Fixtracking::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	index => sub {
		addons => [{
			name => "BetterPrivacy",
			image => "better-privacy-logo.png",			
			features => ["Blocks flash cookies."],
			recommended => {
				firefox => 1,
			},
			types => {				
				flashcookies => 1,				
			},
			addlink => {
				firefox => "https://addons.mozilla.org/en-US/firefox/addon/betterprivacy/?src=cb-dl-mostpopular",				
			},
		},{
			name => "DoNotTrackMe",
			image => "DNTMe.png",			
			features => ["Blocks third-party trackers on sites."],
			recommended => {
				firefox => 1,
				chrome => 1,				
				safari => 1,
				msie => 1,
			},			
			types => {				
				cookies => 1,				
				bugs => 1,				
			},
			addlink => {
				firefox => "https://addons.mozilla.org/en-US/firefox/addon/donottrackplus/?src=search",
				chrome => "https://chrome.google.com/webstore/detail/donottrackme/epanfjkfahimkgomnigadpkobaefekcd",				
				safari => "http://www.abine.com/dntdetail.php#",				
				msie => "http://www.abine.com/dntdetail.php#",
			},
		},{
			name => "Click&Clean",
			image => "click-and-clean.png",
			note => 'Note: by default, Click&amp;Clean does not delete Flash cookies. You need to select "Delete local storage" in Click&amp;Clean\'s settings and then occasionally click "Securely Close Browser" to remove them.',
			warning => 1,
			features => ["Blocks flash cookies."],			
			optional => {				
				chrome => 1,				
			},
			types => {				
				flashcookies => 1,				
			},
			addlink => {				
				chrome => "https://chrome.google.com/webstore/detail/clickclean/ghgabhipcejejjmhhchfonmamedcbeod",			
				
			},
		},{
			name => "Disconnect",
			image => "disconnect-logo-new.png",			
			features => ["Blocks trackers from popular sites."],
			recommended => {				
				opera => 1,				
			},
			optional => {
				firefox => 1,
				chrome => 1,				
				safari => 1,				
			},
			types => {
				bugs => 1,				
			},
			addlink => {
				firefox => "https://disconnect.me/",
				chrome => "https://chrome.google.com/webstore/detail/disconnect/jeoacafpbcihiomhlakheieifhpjdfeo",				
				safari => "https://disconnect.me/",
				opera => "https://disconnect.me/",
				msie => "https://disconnect.me/",
			},
		},{
			name => "DuckDuckGo",
			image => "DDG-logo.png",	
			bspec => 1,			
			msie_add_ddg => 'onclick="window.external.AddSearchProvider(\'https://duckduckgo.com/opensearch_ssl.xml\');"',
			features => [
				"Search anonymously.", 
				"Links to secure (HTTPS) versions of sites where possible.",
			],
			types => {
				encryption => 1,			
				referrer => 1,
			},
			addlink => {
				firefox => "https://addons.mozilla.org/en-US/firefox/addon/duckduckgo-for-firefox/?src=search",
				chrome => "https://chrome.google.com/webstore/detail/duckduckgo-for-chrome/bpphkkgodbfncbcpgopijlfakfgmclao",				
				safari => "http://duckduckgo.com/extensions/duckduckgo.safariextz",
				opera => "https://addons.opera.com/en/extensions/details/duckduckgo-for-opera-2/",
				msie => "#",
			},
			moreinfo => {				
				chrome => {
					link => 'http://help.duckduckgo.com/customer/portal/articles/216440-chrome',
					text => 'Make Default Search',
				},
			},
		},{
			name => "HTTPS Everywhere",
			image => "https-everywhere.png",			
			features => ["Redirects to secure (HTTPS) versions of sites where possible."],
			recommended => {
				firefox => 1,
				chrome => 1,				
			},
			optional => {
				firefox => 1,
				chrome => 1,
				opera => 1,
				safari => 1,
				msie => 1,
			},
			types => {				
				encryption => 1,				
			},
			addlink => {
				firefox => "https://www.eff.org/https-everywhere",
				chrome => "https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp",
			},
		},{
			name => "Ghostery",
			image => "ghostery-logo.png",
			note => "Note: by default, Ghostery will only show you which trackers are operating on the websites you visit. Blocking/erasing these trackers must be enabled in the Ghostery settings.",
			warning => 1,
			features => ["Monitors third-party trackers on sites."],			
			optional => {
				firefox => 1,
				chrome => 1,				
				safari => 1,
				msie => 1,
			},
			types => {				
				cookies => 1,
				flashcookies => 1,
				bugs => 1,				
			},
			addlink => {
				firefox => "https://addons.mozilla.org/en-US/firefox/addon/ghostery/?src=cb-dl-mostpopular",
				chrome => "https://chrome.google.com/webstore/detail/mlomiejdfkolichcflejclcbmpeaniij",				
				safari => "https://www.ghostery.com/download",
				opera => "https://addons.opera.com/en/extensions/details/ghostery/",
				msie => "http://www.ghostery.com/download",
			},
		},{
			name => "PrivacyFix",
			image => "privacyfix.png",			
			features => ["Helps lock down your Facebook and Google privacy settings."],			
			optional => {
				firefox => 1,
				chrome => 1,				
			},
			types => {
				settings => 1,				
			},
			addlink => {
				firefox => "https://privacyfix.com/start",
				chrome => "https://chrome.google.com/webstore/detail/privacyfix-by-privacychoi/pmejhjjecaldkllonlokhkglbdbkdcni",	
			},
		},{
			name => "Adblock Plus",
			image => "ad-block-plus-logo.png",			
			features => ["Blocks intrusive ads."],			
			optional => {
				firefox => 1,
				chrome => 1,
				opera => 1,				
			},
			types => {				
				bugs => 1,				
			},
			addlink => {
				firefox => "https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/",
				chrome => "https://chrome.google.com/webstore/detail/adblock-plus-beta/cfhdojbkjhnklbpkdaibdccddilifddb",
				opera => "https://addons.opera.com/extensions/details/opera-adblock/",
			},
		},{
			name => "Adblock",
			image => "adblock-logo.png",			
			features => ["Block intrusive ads."],			
			optional => {				
				safari => 1,				
			},
			types => {				
				bugs => 1,				
			},
			addlink => {						
				safari => "http://safariadblock.com/",				
			},
		},{
			name => "NoScript",
			image => "noscript-logo.png",
			note => "Note: by default, NoScript makes many common Web sites function improperly.",
			warning => 1,
			features => ["Blocks scripts."],			
			optional => {
				firefox => 1,				
			},
			types => {				
				scripts => 1,				
			},
			addlink => {
				firefox => "https://addons.mozilla.org/en-US/firefox/addon/noscript/?src=cb-dl-mostpopular",				
			},
		},{
			name => "NotScripts",
			image => "notscripts-logo.png",
			note => "Note: by default, NotScripts makes many common Web sites function improperly.",
			warning => 1,
			features => ["Blocks scripts."],			
			optional => {				
				chrome => 1,
				opera => 1,				
			},
			types => {
				scripts => 1,
			},
			addlink => {				
				chrome => "https://chrome.google.com/webstore/detail/notscripts/odjhifogjcknibkahlpidmdajjpkkcfn",	
				opera => "https://addons.opera.com/en/extensions/details/notscripts/",				
			},
		},{
			name => "Javascript Blocker",
			image => "javascript-blocker.png",
			note => "Note: by default, Javascript Blocker makes many common Web sites function improperly.",
			warning => 1,
			features => ["Blocks scripts."],			
			optional => {				
				safari => 1,				
			},
			types => {
				scripts => 1,
			},
			addlink => {								
				safari => "http://javascript-blocker.toggleable.com/",			
			},
		}],
	},
}}

1;

=comment
			name => "",
			image => "",
			note => "",
			warning => 1,
			features => [""],
			recommended => {
				firefox => 1,
				chrome => 1,
				opera => 1,
				safari => 1,
				msie => 1,
			},
			optional => {
				firefox => 1,
				chrome => 1,
				opera => 1,
				safari => 1,
				msie => 1,
			},
			types => {
				settings => 1,
				encryption => 1,
				scripts => 1,
				cookies => 1,
				flashcookies => 1,
				bugs => 1,
				referrer => 1,
			},
			addlink => {
				firefox => "",
				chrome => "",				
				safari => "",
				opera => "",
				msie => "",
			},
			moreinfo => {
				firefox => {
					link => '',
					text => '',
				}
				chrome => {
					link => '',
					text => '',
				},
				safari => {
					link => '',
					text => '',
				},
				opera => {
					link => '',
					text => '',
				},
				msie => {
					link => '',
					text => '',
				},
			},
=cut
