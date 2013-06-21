package DDG::Publisher::Site::Fixtracking::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {{
	index => sub {
		addons => [{
			key => "value",
		},{
			key => "value",
		},{
			key => "value",
		}],
	},
}}

1;
