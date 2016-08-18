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
			text => "Help us make %sDuckDuckGo%s, the best search engine for programmers.",
			img => 'regex',
			tab => 'Regex',
			user => 'mintsoft',
			link => 'https://duckduckgo.com/?q=regex+cheat+sheet&ia=cheatsheet',
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
			name => 'Riffsy Gif Search',
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
