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

# For just testing output.
my $dir_output = '/usr/local/ddg/www-static/duckduckhack.com/tmp';

sub pages {

	my $self = shift;

	my %pages = ();

	find(sub {

		my $name = $File::Find::name;
		my $dir = $File::Find::dir;

		return unless $name =~ /^[^.].+\.md$/; # only markdown files
		warn qq($name\n);

		my ($file) = $name =~ /^$self->{source_dir}\/(.*)\.md/;
		my $dir_rel = '';
		($dir_rel,$file) = $file =~ /^(.*)\/(.*)/ if $file =~ /\//;
		#	warn qq($dir_rel\t$file\n);;

		my $markdown = io($name)->slurp;

		# Replaces hard github links to other markdown files to our newly converted relative links
		$markdown =~ s~(\]\()https://github.com/duckduckgo/duckduckgo-documentation/blob/master/duckduckhack/(?:[^\/\.]+\/){1,4}([^\.]+?)\.md([^\)]*?\))~$1$2$3~sg;
		#	die $markdown;

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

		#	die $html;
		#	die $file;
	
		$pages{$file} = sub {
				html => $html,
				maintemplate => 'doc.tx',
		};

		# $ref->{$_} = $html;
	}, $self->source_dir);

	# die p(%pages);

	return \%pages;
}

1;
