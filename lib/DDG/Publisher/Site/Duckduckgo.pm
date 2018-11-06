package DDG::Publisher::Site::Duckduckgo;

use strict;
use MooX;
use DDG::Locale;

with qw(
	DDG::Publisher::SiteRole
);

sub default_hostname { 'duckduckgo.com' }

sub dirs_classes {qw(
	Root
	Software
)}

sub locale_package { 'DDG::Locale' }
sub locale_dist { '' }
sub locale_domain { 'duckduckgo' }

1;