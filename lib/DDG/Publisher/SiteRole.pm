package DDG::Publisher::SiteRole;

use MooX::Role;
use Class::Load ':all';
use Text::Xslate qw( mark_raw );
use File::ShareDir::ProjectDistDir;
use Locale::Simple;
use Config::INI::Reader;
use Path::Class;
use JavaScript::Value::Escape;

requires qw(
	default_hostname
	dirs_classes
	locale_package
	locale_domain
);

has publisher => (
	is => 'ro',
	required => 1,
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

has default_locale => (
	is => 'ro',
	builder => 1,
	lazy => 1,
);

sub _build_default_locale { 'en_US' }

sub _build_dirs {
	my ( $self ) = @_;
	return {map {
		my $class = (ref $self || $self).'::'.$_;
		load_class($class);
		s/([a-z])([A-Z])/$1_$2/g;
		$_ = lc($_);
		$_ => $class->new(
			key => $_,
			site => $self,
		);
	} $self->dirs_classes};
}

has save_data => (
	is => 'rw',
	lazy => 1,
	default => sub {{}},
);

sub load_locale_package {
	my ( $self ) = @_;
	load_class($self->locale_package) unless (is_class_loaded($self->locale_package));
}

sub locales {
	my ( $self ) = @_;
	$self->load_locale_package;
	return (keys %{$self->locale_package->locales});
}

has template_engine => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_template_engine {
	my ( $self ) = @_;
	my $site_template_root = dir(dist_dir('DDG-Publisher'),'site',$self->key)->stringify;
	my $core_template_root = dir(dist_dir('DDG-Publisher'),'core')->stringify;
	# not necessary, but after i added it, i stored it here
	my %xslate_locale_functions;
	for my $key (keys %{ Locale::Simple->coderef_hash }) {
		$xslate_locale_functions{$key} = sub {
			my $result = Locale::Simple->coderef_hash->{$key}->(@_);
			return mark_raw($result);
		};
	}
	return Text::Xslate->new(
		path => [$site_template_root,$core_template_root],
		function => {
			js => sub { mark_raw(javascript_value_escape(join("",@_))) },
			%xslate_locale_functions,
			find_template => sub {
				my ($filename) = @_;
				return $filename if eval { $self->template_engine->find_file($filename); 1 };
				$filename .= $self->template_engine->{suffix};
				return $filename if eval { $self->template_engine->find_file($filename); 1 };
				return 0;
			},
		},
	);
}

1;