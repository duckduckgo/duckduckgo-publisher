package DDG::Publisher::Site::Dontbubbleus;

use MooX;
use DDGC::Locale::DuckduckgoDontbubbleus;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'dontbubble.us' }

sub dirs_classes {qw(
	Root
)}

sub locale_package { 'DDGC::Locale::DuckduckgoDontbubbleus' }
sub locale_dist { 'DDGC-Locale-DuckduckgoDontbubbleus' }
sub locale_domain { 'duckduckgo-dontbubbleus' }

1;