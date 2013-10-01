package DDG::Publisher::Site::Duckduckhack::Root;

use MooX;

use IO::All;
use Data::Dumper;
use DDP;

use File::Path qw(make_path);
use File::Find;
use File::chdir;

use Path::Class;

use Markdent::Handler::HTMLStream::Document;
use Markdent::Parser;

use IPC::Run qw{run timeout};

with qw(
	DDG::Publisher::DirRole
);

has nav_file => (
	is => 'ro',
	lazy => 1,
	builder => sub {'ddh-index.md'},
);

has source_dir => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_source_dir {
	my ( $self ) = @_;

	my $cache_dir = $self->site->publisher->cache_dir;

	my $source_dir = dir($cache_dir,'duckduckgo-documentation/duckduckhack');

	{
		my ($in, $out, $err);    

		#    die $cache_dir;
		if (-d $source_dir) {
			local $CWD = $source_dir;
			run [
				'git', 'pull'
			], \$in, \$out, \$err, timeout(60) or die "$err (error $?) $out";
		} else {
			local $CWD = $cache_dir;
			run [
				'git', 'clone', 'git@github.com:duckduckgo/duckduckgo-documentation.git'
			], \$in, \$out, \$err, timeout(60) or die "$err (error $?) $out";
		}
	}

#	warn qq(DUCKDUCKHACK source_dir: $source_dir\n);
#	die;

	return $source_dir;
}

sub path { '/' }

# Builds the nav hash to push to each template.
sub get_nav {
    my $self = shift;

    my $nav_path = dir($self->source_dir,$self->nav_file);
    my $markdown = io($nav_path)->slurp;    

#    die $markdown;

    my %nav = ();
    my @nav = ();
    HEADING: foreach my $heading (split(/\n\-/s,$markdown)) {
	next HEADING if !$heading;
	next HEADING if $heading !~ /\*\*/;

	my $title = '';
	my @sec = ();
      LINE: foreach my $line (split(/\n/,$heading)) {
	  if ($line =~ /\*\*([^\*]+)/) {
	      $title = $1;

	  # Capturing markdown link.
	  } elsif ($line =~ /\[([^\]]+)\]\(([^\)]+)/) {
	      my $section = $1;
	      my $link = $2;
	      $link =~ s/^.*\/(.*)\.md/$1/;
	      my %sec = ();
	      $sec{'title'} = $section;
	      $sec{'link'} = $link;
	      push(@sec,\%sec);
	      
	      $nav{$link} = {
		  'category' => $title,
		  'title' => $section,
	      }
	  }
      }

	if ($title) {
	    my %sec = ();
	    $sec{'title'} = $title;
	    $sec{'sections'} = \@sec;
	    push(@nav,\%sec);
	}
    }

#    die p(%nav);
    return \@nav, \%nav;
}

# For just testing output.
my $dir_output = '/usr/local/ddg/www-static/duckduckhack.com/tmp';

sub pages {
	my $self = shift;

	my %pages = ();

	# Old index.
	$pages{'index'} = sub {};

	my ($nav_arr_ref,$nav_hash_ref) = $self->get_nav;
	my %nav = %{$nav_hash_ref};

	find(sub {

		my $name = $File::Find::name;
		my $dir = $File::Find::dir;

		return if $name =~ /$self->{nav_file}/;

		return unless $name =~ /^[^.].+\.md$/; # only markdown files
#		warn qq($name\n);

		my ($file) = $name =~ /^$self->{source_dir}\/(.*)\.md/;
		my $dir_rel = '';
		($dir_rel,$file) = $file =~ /^(.*)\/(.*)/ if $file =~ /\//;
		#	warn qq($dir_rel\t$file\n);;

		my $markdown = io($name)->slurp;

		# Replaces hard github links to other markdown files to our newly converted relative links
		$markdown =~ s~(\]\()https://github.com/duckduckgo/duckduckgo-documentation/blob/master/duckduckhack/(?:[^\/\.]+\/){1,4}([^\.]+?)\.md([^\)]*?\))~$1$2$3~sg;
#			die $markdown;

		# Just for debugging.
		#	make_path("$dir_output/$dir_rel") if $dir_rel;
		#	open(IN,">$dir_output/$dir_rel/$file.html");
		my $buffer = q{};
		open my $fh, '>', \$buffer;

		my $handler = Markdent::Handler::HTMLStream::Document->new(
			title => $name,
			output => $fh,
#	    output => \*IN,
		);

		my $parser = Markdent::Parser->new( dialect => 'GitHub', handler => $handler );
		$parser->parse( markdown => $markdown );

		my $html = $buffer;

		# Gets embedded in wrapped html.
		$html =~ s/^.*?<html>.*?<\/head>\s*<body>\s*//s;
		$html =~ s/\s*<\/body>.*?<\/html>\s*$//s;

			die $html;
		#	die $file;

		my $category = $nav{$file}{'category'} || '';
		my $title = $nav{$file}{'title'} || '';

		warn qq(NO CATEGORY: $file\n) if !$category;
#		warn qq($file\t$title\t$category\n);

		$pages{$file} = sub {
				file => $file,
				file_dir => $dir_rel,
				file_path => "https://github.com/duckduckgo/duckduckgo-documentation/tree/master/duckduckhack",
				title => $title,
				category => $category,
				html => $html,
				nav_ref => $nav_arr_ref,
				maintemplate => 'doc.tx',
#				raw_output => 1,  # enable to strip out all of the wrapping for these docs and only output the main content for scraping and inclusion elsewhere
		};

		# $ref->{$_} = $html;
	}, $self->source_dir);

#	die p($nav_ref);

	return \%pages;
}

1;
