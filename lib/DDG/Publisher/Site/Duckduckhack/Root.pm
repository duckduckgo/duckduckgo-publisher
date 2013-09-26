package DDG::Publisher::Site::Duckduckhack::Root;

use MooX;

use IO::All;
use Data::Dumper;
use DDP;

use File::Path qw(make_path);
use File::Find;
use vars qw/*name *dir *prune/;
*name = *File::Find::name;
*dir = *File::Find::dir;
*prune = *File::Find::prune;

use Markdent::Handler::HTMLStream::Document;
use Markdent::Parser;

with qw(
	DDG::Publisher::DirRole
);

has source_dir => (
    is => 'ro',
    required => 1,
    default => sub {$ENV{HOME} . '/duckduckgo-documentation/duckduckhack'},
    );

sub path { '/' }

# For just testing output.
my $dir_output = '/usr/local/ddg/www-static/duckduckhack.com/tmp';
my $dir_tmp = '/tmp/';

sub pages {

    my $self = shift;

    my %pages = ();

    find(sub {
        return unless $name =~ /^[^.].+\.md$/; # only markdown files
	warn qq($name\n);;

	my ($file) = $name =~ /^$self->{source_dir}\/(.*)\.md/;
	my $dir_rel = '';
	($dir_rel,$file) = $file =~ /^(.*)\/(.*)/ if $file =~ /\//;
#	warn qq($dir_rel\t$file\n);;

        my $markdown = io($name)->slurp;

	# Replaces hard github links to other markdown files to our newly converted relative links
	$markdown =~ s~(\]\()https://github.com/duckduckgo/duckduckgo-documentation/blob/master/duckduckhack/(?:[^\/\.]+\/){1,4}([^\.]+?)\.md([^\)]*?\))~$1$2\.html$3~sg;
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
	    'html' => $html;
	};


#        $ref->{$_} = $html;
	 }, $self->source_dir);

#    die p(%pages);

    return \%pages;
}

1;
