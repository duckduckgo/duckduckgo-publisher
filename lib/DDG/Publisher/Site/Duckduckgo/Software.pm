package DDG::Publisher::Site::Duckduckgo::Software;

use strict;
use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/software/' }

sub pages {{
	"mozilla-firefox-portable" => sub {
		about_footer => 1,
		no_footer_arrow => 1,
		copyright_footer => 1,
		copyright_text => 'Privacy, simplified.',
		no_content_internal => 1,
		no_spacer => 1,
		js_page_type => 'Apps',

		product => {
			name => 'Mozila Firefox',
			version => '59.0.1',
			category => 'Browsers',
			dl_size => '74MB',
			inst_size => '268MB',
			images => [
				'https://cdn.portableapps.com/FirefoxPortable.png',
				'http://lorempixel.com/650/530/technics',
				'http://lorempixel.com/650/530/technics'
			],
			summary => "Mozilla Firefox® is a fast, full-featured web browser that's easy to use. It has lots of great features including popup-blocking, tabbed-browsing, integrated search, improved privacy features, automatic updating and more. Plus, thanks to the PortableApps.com launcher bundled in the Mozilla Firefox, Portable Edition, it leaves no personal information behind on the machine you run it on, so you can take your favorite browser along with all your favorite bookmarks and extensions with you wherever you go. Firefox Portable is a dual-mode 32-bit and 64-bit app, ensuring Firefox runs as fast as possible on every PC.",
			details => {
				'Publisher' => 'Mozilla & PortableApps.com (John T. Haller)',
				'Date Updated' => '2018-03-17',
				'Date Added' => '2004-04-16',
				'System Requirements' => 'Windows 7, 8, 10 & WINE',
				'App License' => 'Open Source (MPL/GPL/LGPL under Mozilla EULA)',
				'Source' => 'Launcher (included), Firefox',
				'MD5 Hash' => '79f81c1d5ef0a2d7cfce914e552b7b6b (English)',
			}
		}
	},

	"notepadpp-portable" => sub {
		about_footer => 1,
		no_footer_arrow => 1,
		copyright_footer => 1,
		copyright_text => 'Privacy, simplified.',
		no_content_internal => 1,
		no_spacer => 1,
		js_page_type => 'Apps',

		product => {
			name => 'Notepad++',
			version => '7.5.4',
			category => 'Development',
			dl_size => '3MB',
			inst_size => '15MB',
			images => [
				'https://cdn.portableapps.com/NotepadppPortable.png',
				'http://lorempixel.com/650/530/technics',
				'http://lorempixel.com/650/530/technics'
			],
			summary => "Notepad++ Portable is the handy Notepad++ text editor packaged as a portable app so you can do your development on the go. It has all the same great features of Notepad++ including support for multiple languages and an extensive plugin system, but there's nothing to install.",
			details => {
				'Publisher' => 'Notepad++ Team & PortableApps.com',
				'Date updated' => '2018-01-02',
				'System Requirements' => 'Windows XP/Vista/7/8/10',
				'License' => 'Free / Open Source (GPL)',
				'Source Code' => 'Launcher (included), Notepad++',
				'MD5 Hash' => '4b3bab57e755782da408ad3fad5c22d3',
			}
		}
	}
}}

1;
