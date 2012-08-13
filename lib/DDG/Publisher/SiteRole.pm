package DDG::Publisher::SiteRole;

use MooX::Role;
use Class::Load ':all';
use Text::Xslate qw( mark_raw );
use File::ShareDir::ProjectDistDir;

requires qw(
	default_hostname
	dirs_classes
	locales
);

has key => (
	is => 'ro',
	required => 1,
);

has hostname => (
	is => 'ro',
	builder => 'default_hostname',
	lazy => 1,
);

has dirs => (
	is => 'ro',
	builder => 1,
	lazy => 1,
);

sub _build_dirs {
	my ( $self ) = @_;
	return {map {
		my $class = (ref $self || $self).'::'.$_;
		load_class($class);
		s/([a-z])([A-Z])/$1_$2/g;
		$_ = lc($_);
		$_ => $class->new( key => $_, site => $self );
	} $self->dirs_classes};
}

has template_engine => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_template_engine {
	my ( $self ) = @_;
	my $template_root = join('/',dist_dir('DDG-Publisher'),'site',$self->key);
	return Text::Xslate->new(
		path => [$template_root],
		function => {
			ul => sub { $self->locale_url(@_) },
		},
	);
}

sub locale_url {
	my ( $self, $dir, $page, $locale ) = @_;
	return $self->dirs->{$dir}->locale_url($page,$locale);
}

1;