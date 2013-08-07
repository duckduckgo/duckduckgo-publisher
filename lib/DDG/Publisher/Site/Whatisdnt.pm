package DDG::Publisher::Site::Whatisdnt;

use MooX;
use DDGC::Locale::DuckduckgoWhatisdnt;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'whatisdnt.com' }

sub dirs_classes {qw(
	Root
)}

sub locale_package { 'DDGC::Locale::DuckduckgoWhatisdnt' }
sub locale_dist { 'DDGC-Locale-DuckduckgoWhatisdnt' }
sub locale_domain { 'duckduckgo-whatisdnt' }

1;