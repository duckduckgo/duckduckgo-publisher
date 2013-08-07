package DDG::Publisher::Site::Fixtracking;

use MooX;
use DDGC::Locale::DuckduckgoFixtracking;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'fixtracking.com' }

sub dirs_classes {qw(
	Root
)}

sub locale_package { 'DDGC::Locale::DuckduckgoFixtracking' }
sub locale_dist { 'DDGC-Locale-DuckduckgoFixtracking' }
sub locale_domain { 'duckduckgo-fixtracking' }

1;