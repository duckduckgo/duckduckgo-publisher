package DDG::Publisher::Site::Duckduckhack;

use MooX;
use DDGC::Locale::DuckduckgoDuckduckhack;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'duckduckhack.com' }

sub dirs_classes {qw(
	Root
)}

sub locale_package { 'DDGC::Locale::DuckduckgoDuckduckhack' }
sub locale_dist { 'DDGC-Locale-DuckduckgoDuckduckhack' }
sub locale_domain { 'duckduckgo-duckduckhack' }

1;