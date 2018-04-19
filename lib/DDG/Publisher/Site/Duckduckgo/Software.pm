package DDG::Publisher::Site::Duckduckgo::Software;

use strict;
use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/software/' }

my %page_defaults = (
	about_footer => 1,
	software_footer => 1,
	no_footer_arrow => 1,
	copyright_footer => 1,
	copyright_text => 'Privacy, simplified.',
	no_content_internal => 1,
	no_spacer => 1,
	js_page_type => 'Software',
	page_class => 'product-page',
);

sub pages {{
	"mozilla-firefox-portable" => sub {
		%page_defaults,
		
		title => 'Mozilla Firefox, Portable Edition',
		product => {
			name => 'Mozilla Firefox',
			asset_path => 'mozilla-firefox',
			version => '59.0.2',
			category => 'Browsers',
			url => 'https://portableapps.com/apps/internet/firefox_portable',
			dl => {
				size => '74MB',
				filename => 'FirefoxPortable/FirefoxPortable_59.0.2_English.paf.exe'
			},
			inst_size => '268MB',
			summary => "Mozilla Firefox® is a fast, full-featured web browser that's easy to use. It has lots of great features including popup-blocking, tabbed-browsing, integrated search, improved privacy features, automatic updating and more. Plus, thanks to the PortableApps.com launcher bundled in the Mozilla Firefox, Portable Edition, it leaves no personal information behind on the machine you run it on, so you can take your favorite browser along with all your favorite bookmarks and extensions with you wherever you go. Firefox Portable is a dual-mode 32-bit and 64-bit app, ensuring Firefox runs as fast as possible on every PC.",
			details => {
				'Publisher' => 'Mozilla & PortableApps.com (John T. Haller)',
				'Date Updated' => '2018-03-28',
				'System Requirements' => 'Windows 7, 8, 10 & WINE',
				'License' => 'Open Source (MPL/GPL/LGPL under Mozilla EULA)',
				'Source' => 'Launcher (included), Firefox',
				'MD5 Hash' => '968bf8179afb917293659ea3859a28ad (English)',
			}
		}
	},

	"q-dir-portable" => sub {
		%page_defaults,

		title => 'Q-Dir, Portable Edition',
		product => {
			name => 'Q-Dir',
			asset_path => 'q-dir',
			version => '6.99',
			category => 'Utilities',
			url => 'https://portableapps.com/apps/development/q-dir-portable',
			dl => {
				size => '1MB',
				filename => 'Q-DirPortable/Q-DirPortable_6.99.1.paf.exe'
			},
			inst_size => '2MB',
			summary => "Q-Dir (the Quad Explorer) makes your files and folder easy to manage. It provides fast and easy access to your hard disks, network folders, USB-Sticks, floppy disks and other storage devices. The 32-bit and 64-bit versions of Q-Dir are included and the correct one automatically used.",
			details => {
				'Publisher' => 'Nenad Hrg & PortableApps.com',
				'Date Updated' => '2018-04-16',
				'System Requirements' => 'Windows XP, Vista, 7, 8, 10 & WINE',
				'License' => 'Freeware (Personal and business use)',
				'Source' => 'Launcher (included), PortableApps.com Installer',
				'MD5 Hash' => '0928948507ae511c9a1713449cf21ff9'
			}
		}
	},

	"portableapps" => sub {
		%page_defaults,

		title => 'PortableApps Platform',
		product => {
			is_platform => 1,
			name => 'PortableApps',
			asset_path => 'portableapps',
			version => '14.4.3',
			category => 'Utilities',
			url => 'https://portableapps.com/download',
			dl => {
				size => '4MB',
				filename => 'pacplatform/PortableApps.com_Platform_Setup_14.4.3.paf.exe'
			},
			inst_size => '10MB',
			summary => "The PortableApps.com Platform™ is a full-featured portable software system that ties all your portable apps together and lets you build your own custom portable app suite for use in your synced cloud folder, on your local PC, or on a portable USB drive.",
			details => {
				'Publisher' => 'PortableApps.com',
				'Date Updated' => '2018-02-01',
				'System Requirements' => 'Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Vista, Windows XP, Linux, Unix, BSD, etc via Wine & Mac OS X via CrossOver, Wineskin, WineBottler, PlayOnMac',
				'License' => 'Free / Open Source (GPL, some MIT, some CC images, trademarks and trade dress not included)',
				'Source' => 'PortableApps.com Platform (Menu, App Store, etc)',
				'MD5 Hash' => 'ac579df42a0214533d25266e1779daaa'
			}
		}
	}
}}

1;
