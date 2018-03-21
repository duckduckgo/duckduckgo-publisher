package DDG::Publisher::Site::Duckduckgo::Apps;

use strict;
use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { 'apps' }

sub pages {{
	"mozilla-firefox-portable" => sub {
		about_footer => 1,
		no_footer_arrow => 1,
		copyright_footer => 1,
		copyright_text => 'Privacy, simplified.',
		no_content_internal => 1,
		no_spacer => 1,
		hero_header => 1,
		no_hero_header_icon => 1,
		js_page_type => 'Apps',
	},
	
	"notepadpp-portable" => sub {
		about_footer => 1,
		no_footer_arrow => 1,
		copyright_footer => 1,
		copyright_text => 'Privacy, simplified.',
		no_content_internal => 1,
		no_spacer => 1,
		hero_header => 1,
		no_hero_header_icon => 1,
		js_page_type => 'Apps',
	}
}}

1;
