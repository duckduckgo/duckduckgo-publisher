package DDG::Publisher;

use MooX;
use Path::Class;
use Class::Load ':all';
use IO::All;

sub site_classes {qw(
	Duckduckgo
)}

has sites => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

has no_compression => (
	is => 'ro',
	default => sub { 0 },
);

sub _build_sites {
	my ( $self ) = @_;
	return [map {
		my $class = 'DDG::Publisher::Site::'.$_;
		load_class($class);
		s/([a-z])([A-Z])/$1_$2/g;
		$_ = lc($_);
		$class->new( key => lc($_) );
	} $self->site_classes];
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
	for my $site (@{$self->sites}) {
		for my $dir (values %{$site->dirs}) {
			for (sort { $a->fullpath cmp $b->fullpath } values %{$dir->fullpath_files}) {
				my $real_file = file($target,$site->key,$_->fullpath)->absolute;
				$real_file->dir->mkpath unless -f $real_file->dir->absolute->stringify;
				my $content = $_->content;
				unless ($self->no_compression) {
					
				}
				io($real_file->stringify)->print($content);
				$count++;
			}
		}
	};
	return $count;
}

1;
