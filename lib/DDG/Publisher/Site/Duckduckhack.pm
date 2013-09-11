package DDG::Publisher::Site::Duckduckhack;

use MooX;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'duckduckhack.com' }

sub dirs_classes {qw(
	Root
)}

sub locale_package { 'DDGC::Locale::DuckduckgoDuckduckgo' }
sub locale_dist { 'DDGC-Locale-DuckduckgoDuckduckgo' }
sub locale_domain { 'duckduckgo-duckduckgo' }

1;