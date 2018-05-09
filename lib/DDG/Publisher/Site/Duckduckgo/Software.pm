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
			version => '60.0',
			category => 'Browsers',
			url => 'https://portableapps.com/apps/internet/firefox_portable',
			dl => {
				size => '75MB',
				filename => 'FirefoxPortable/FirefoxPortable_60.0_English.paf.exe'
			},
			inst_size => '274MB',
			summary => "Mozilla Firefox® is a fast, full-featured web browser that's easy to use. It has lots of great features including popup-blocking, tabbed-browsing, integrated search, improved privacy features, automatic updating and more. Plus, thanks to the PortableApps.com launcher bundled in the Mozilla Firefox, Portable Edition, it leaves no personal information behind on the machine you run it on, so you can take your favorite browser along with all your favorite bookmarks and extensions with you wherever you go. Firefox Portable is a dual-mode 32-bit and 64-bit app, ensuring Firefox runs as fast as possible on every PC.",
			details => {
				'Publisher' => 'Mozilla & PortableApps.com (John T. Haller)',
				'Date Updated' => '2018-03-28',
				'System Requirements' => 'Windows 7, 8, 10 & WINE',
				'License' => 'Open Source (MPL/GPL/LGPL under Mozilla EULA)',
				'Source' => 'Launcher (included), Firefox',
				'MD5 Hash' => '2fa01402ce48e666f3aad7360cfe101b (English)',
			}
		}
	},

	"q-dir-portable" => sub {
		%page_defaults,

		title => 'Q-Dir, Portable Edition',
		product => {
			name => 'Q-Dir',
			asset_path => 'q-dir',
			version => '7.01',
			category => 'Utilities',
			url => 'https://portableapps.com/apps/development/q-dir-portable',
			dl => {
				size => '1MB',
				filename => 'Q-DirPortable/Q-DirPortable_7.01.paf.exe'
			},
			inst_size => '2MB',
			summary => "Q-Dir (the Quad Explorer) makes your files and folder easy to manage. It provides fast and easy access to your hard disks, network folders, USB-Sticks, floppy disks and other storage devices. The 32-bit and 64-bit versions of Q-Dir are included and the correct one automatically used.",
			details => {
				'Publisher' => 'Nenad Hrg & PortableApps.com',
				'Date Updated' => '2018-04-30',
				'System Requirements' => 'Windows XP, Vista, 7, 8, 10 & WINE',
				'License' => 'Freeware (Personal and business use)',
				'Source' => 'Launcher (included), PortableApps.com Installer',
				'MD5 Hash' => 'e0e5336d9f4fffc901287010e0765ea4'
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
			version => '15.0',
			category => 'Utilities',
			url => 'https://portableapps.com/download',
			dl => {
				size => '5MB',
				filename => 'pacplatform/PortableApps.com_Platform_Setup_15.0.paf.exe'
			},
			inst_size => '12MB',
			summary => "The PortableApps.com Platform™ is a full-featured portable software system that ties all your portable apps together and lets you build your own custom portable app suite for use in your synced cloud folder, on your local PC, or on a portable USB drive.",
			details => {
				'Publisher' => 'PortableApps.com',
				'Date Updated' => '2018-05-07',
				'System Requirements' => 'Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Vista, Windows XP, Linux, Unix, BSD, etc via Wine & Mac OS X via CrossOver, Wineskin, WineBottler, PlayOnMac',
				'License' => 'Free / Open Source (GPL, some MIT, some CC images, trademarks and trade dress not included)',
				'Source' => 'PortableApps.com Platform (Menu, App Store, etc)',
				'MD5 Hash' => '5d1d44275c25a0d0455d93417d08ed80'
			}
		}
	}
}}

1;
