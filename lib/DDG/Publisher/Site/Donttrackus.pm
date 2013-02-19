package DDG::Publisher::Site::Donttrackus;

use MooX;
use DDGC::Locale::DuckduckgoDonttrackus;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'donttrack.us' }

sub dirs_classes {qw(
	Root
)}

sub locale_package { 'DDGC::Locale::DuckduckgoDonttrackus' }
sub locale_dist { 'DDGC-Locale-DuckduckgoDonttrackus' }
sub locale_domain { 'duckduckgo-donttrackus' }

1;