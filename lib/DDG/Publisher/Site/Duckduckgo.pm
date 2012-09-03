package DDG::Publisher::Site::Duckduckgo;

use MooX;
use DDGC::Locale::DuckduckgoDuckduckgo;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'duckduckgo.com' }

sub dirs_classes {qw(
	Root
)}

sub locale_package { 'DDGC::Locale::DuckduckgoDuckduckgo' }
sub locale_dist { 'DDGC-Locale-DuckduckgoDuckduckgo' }
sub locale_domain { 'duckduckgo-duckduckgo' }

1;