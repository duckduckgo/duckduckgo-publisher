package DDG::Publisher::SiteRole;

use MooX::Role;
use Class::Load ':all';
use Text::Xslate qw( mark_raw );
use File::ShareDir::ProjectDistDir;
use Locale::Simple;

requires qw(
	default_hostname
	dirs_classes
	locale_package
	locale_domain
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

sub load_locale_package {
	my ( $self ) = @_;
	load_class($self->locale_package) unless (is_class_loaded($self->locale_package));
}

sub locales {
	my ( $self ) = @_;
	$self->load_locale_package;
	return (keys $self->locale_package->locales);
}

# has locale_domain => (
# 	is => 'ro',
# 	builder => 1,
# 	lazy => 1,
# );

# sub _build_locale_domain {
# 	my ( $self ) = @_;
	
# }

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
	my $site_template_root = join('/',dist_dir('DDG-Publisher'),'site',$self->key);
	my $core_template_root = join('/',dist_dir('DDG-Publisher'),'core');
	return Text::Xslate->new(
		path => [$site_template_root,$core_template_root],
		function => {
			u => sub { $self->locale_url(@_) },
			%{ Locale::Simple->coderef_hash },
		},
	);
}

sub locale_url {
	my ( $self, $dir, $page, $locale ) = @_;
	return $self->dirs->{$dir}->locale_url($page,$locale);
}

1;