package DDG::Publisher;
# ABSTRACT: Generation of the static pages of DuckDuckGo

use MooX;
use Path::Class;
use Class::Load ':all';
use IO::All -utf8;
use HTML::Packer;
use String::ProgressBar;

has site_classes => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_site_classes {[qw(
	Duckduckgo
	Donttrackus
	Dontbubbleus
)]}

has sites => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

has no_compression => (
	is => 'ro',
	default => sub { 0 },
);

has dryrun => (
	is => 'ro',
	predicate => 1,
);

sub _build_sites { 
	my ( $self ) = @_;
	return [map {
		my $class = 'DDG::Publisher::Site::'.$_;
		load_class($class);
		s/([a-z])([A-Z])/$1_$2/g;
		$_ = lc($_);
		$class->new( key => lc($_), publisher => $self );
	} @{$self->site_classes}];
}

sub BUILD {
	my ( $self ) = @_;
	$self->sites;
}

sub publish_to {
	my ( $self, $target ) = @_;
	my $target_dir = dir($target);
	$target_dir->mkpath unless -d "$target_dir";
	my $count = 0;
	my $packer;
	unless ($self->no_compression) {
		$packer = HTML::Packer->init();
	}
	for my $site (@{$self->sites}) {
		for my $dir (values %{$site->dirs}) {
			print "\n".(ref $site).$dir->web_path."\n\n";
			my @files = values %{$dir->fullpath_files};
			my $progress = String::ProgressBar->new(
				max => scalar @files,
				length => 50,
			);
			my $i = 0;
			for (sort { $a->fullpath cmp $b->fullpath } @files) {
				$i++;
				$progress->update($i);
				$progress->write;
				my $real_file = file($target,$site->key,$_->fullpath)->absolute;
				$real_file->dir->mkpath unless -f $real_file->dir->absolute->stringify;
				my $content = $_->content;
				utf8::encode($content);
				if ($packer) {
					$packer->minify(\$content,{
						remove_comments => 1,
						remove_newlines => 1,
						do_javascript => 1,
						do_stylesheet => 1,
						no_compress_comments => 1,
					})
				}
				io($real_file->stringify)->print($content);
				$count++;
			}
			print "\n";
		}
	};
	return $count;
}

1;
