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
		hero_header_link => '',
		hero_header_link_text => "Docs",
		hero_alt => 1,
        	no_footer_arrow => 1,
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
			name => 'Fuel Economy',
			desc => 'Vehicle fuel economy data',
			user => 'zachthompson',
			link => 'https://duck.co/ia/view/fuel_economy',
			example_link => 'https://duckduckgo.com/?q=2013+tesla+mpg&ia=fueleconomy',
		},{
			name => 'Resistor Colors',
			desc => 'Display resistor color bands',
			user => 'joewalnes',
			link => 'https://duck.co/ia/view/resistor_colors',
			example_link => 'https://duckduckgo.com/?q=10k+resistor&ia=answer',
		},{
			name => 'Linux Cheat Sheet',
			desc => 'Common Linux shortcuts',
			user => 'crashrane',
			link => 'https://duck.co/ia/view/linux_cheat_sheet',
			example_link => 'https://duckduckgo.com/?q=linux+cheat+sheet&ia=cheatsheet',
		}],
		foot_fun => [{
			name => 'People in Space',
			desc => "Find out who's orbiting Earth",
			user => 'NeoSilky',
			link => 'https://duck.co/ia/view/people_in_space',
			example_link => 'https://duckduckgo.com/?q=people+in+space&t=ffab&ia=answer',
		},{
			name => 'Minecraft',
			desc => 'Minecraft crafting recipes',
			user => 'engvik',
			link => 'https://duck.co/ia/view/minecraft',
			example_link => 'https://duckduckgo.com/?q=cake+minecraft&ia=answer',
		},{
			name => 'Rffsy Gif Search',
			desc => 'Search emoji-related gifs',
			user => 'bryanhart',
			link => 'https://duck.co/ia/view/riffsy',
			example_link => 'https://duckduckgo.com/?q=%F0%9F%91%8D&ia=gifs',
		}],
		foot_users => [{
			name => 'Matthew Ramina',
			user => 'mattr555',
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
