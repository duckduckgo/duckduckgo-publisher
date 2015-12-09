package DDG::Publisher::Site::Duckduckhack::Root;

use MooX;

with qw(
	DDG::Publisher::DirRole
);

sub path { '/' }

sub pages {
	my $self = shift;

	my %pages = ();

	$pages{'index'} = sub {
		no_search_header => 1,
		hero_header => 1,
		no_hero_header_icon => 1,
		hero_header_link => 'https://duck.co/duckduckhack/ddh-intro',
		hero_header_link_text => "Docs",
		hero_alt => 1,
		asset_path => 'ddg',
		js_page_type => 'DDH',
		hero_slides => [{
			text => "Welcome to %sDuckDuckHack%s, an open source community changing the future of search.",
			img => 'soundcloud',
			tab => 'Audio',
			user => 'jdan',
			link => 'https://duckduckgo.com/?q=songs+by+tycho&ia=audio',
		},{
			text => "Getting what you search for in few or zero clicks makes a great search experience.",
			img => 'regex',
			tab => 'Regex',
			user => 'mintsoft',
			link => 'https://duckduckgo.com/?q=regex+cheat+sheet&ia=cheatsheet',
		},{
			text => "With the help of you and our community, every search can have an Instant Answer.",
			img => 'recipes',
			tab => 'Recipes',
			user => 'bsstoner',
			link => 'https://duckduckgo.com/?q=reese%27s+cookie+recipes&ia=recipes',
		},{
			text => "Use the Web's best sources for a specific topic or build an Instant Answer from scratch!",
			img => 'movies',
			tab => 'Movies',
			user => 'killerfish',
			link => 'https://duckduckgo.com/?q=currently+in+theaters&ia=in_theaters&iai=0',
		}],
		foot_useful => [{
			name => 'Recipes',
			desc => 'Find recipes by ingredient',
			user => 'bsstoner',
			link => 'https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/Recipes.pm',
			example_link => 'https://duckduckgo.com/?q=carrot+ginger+soup+recipes&ia=recipes',
		},{
			name => 'Regex cheat sheet',
			desc => 'Quickly see regex syntax',
			user => 'mintsoft',
			link => 'https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/share/goodie/cheat_sheets/json/regex.json',
			example_link => 'https://duckduckgo.com/?q=regex+cheat+sheet&t=ffab&ia=cheatsheet',
		},{
			name => 'Timer',
			desc => 'Set a timer for any occasion',
			user => 'mattr555',
			link => 'https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/Timer.pm',
			example_link => 'https://duckduckgo.com/?q=timer+5+minutes&t=ffab&ia=timer',
		}],
		foot_fun => [{
			name => 'People in Space',
			desc => "Find out who's orbiting Earth",
			user => 'NeoSilky',
			link => 'https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/PeopleInSpace.pm',
			example_link => 'https://duckduckgo.com/?q=people+in+space&t=ffab&ia=answer',
		},{
			name => 'Flip a Coin',
			desc => 'Play virtual heads or tails',
			user => 'mattlehning',
			link => 'https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/Coin.pm',
			example_link => 'https://duckduckgo.com/?q=flip+a+coin&t=ffab&ia=answer',
		},{
			name => 'Figlet',
			desc => 'Generate a figlet design',
			user => 'larseng',
			link => 'https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/FIGlet.pm',
			example_link => 'https://duckduckgo.com/?q=figlet+Welcome+to+DuckDuckHack&t=ffab&ia=answer',
		}],
		foot_users => [{
			name => 'Usman Raza',
			user => 'killerfish',
		},{
			name => 'Rob Emery',
			user => 'mintsoft',
		},{
			name => 'Chris Wilson',
			user => 'MrChrisW',
		}],
	};

	return \%pages;
}

1;
