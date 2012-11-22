package DDG::Publisher::DirRole;

use MooX::Role;
use DDG::Publisher::File;

requires qw(
	path
	pages
);

has key => (
	is => 'ro',
	required => 1,
);

has site => (
	is => 'ro',
	required => 1,
);

has files => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_files {
	my ( $self ) = @_;
	my %pages = %{$self->pages_coderefs};
	my @locales = $self->site->locales;
	my %files;
	for my $page (keys %pages) {
		my $code = $pages{$page};
		for my $locale (@locales) {
			my $file = DDG::Publisher::File->new(
				code => $code,
				filebase => $page,
				locale => $locale,
				dir => $self,
			);
			$files{$page}->{$locale} = $file;
		}
	}
	my $default_locale = $self->site->default_locale;
	my %statics = %{$self->statics_coderefs};
	for my $static (keys %statics) {
		my $code = $statics{$static};
		my $file = DDG::Publisher::File->new(
			code => $code,
			filebase => $static,
			locale => $default_locale,
			dir => $self,
			static => 1,
		);
		$files{$static} = $file;
	}
	return \%files;
}

has fullpath_files => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_fullpath_files {
	my ( $self ) = @_;
	my %fullpath_files;
	for (values %{$self->files}) {
		if (ref $_ eq 'HASH') {
			for (values %{$_}) {
				die "The file ".$_->fullpath." already exist!!!" if defined $fullpath_files{$_->fullpath};
				$fullpath_files{$_->fullpath} = $_;
			}
		} else {
			die "The file ".$_->fullpath." already exist!!!" if defined $fullpath_files{$_->fullpath};
			$fullpath_files{$_->fullpath} = $_;			
		}
	}
	return \%fullpath_files;
}

has pages_coderefs => (
	is => 'ro',
	lazy => 1,
	builder => 'pages',
);

sub pages {{}}

has statics_coderefs => (
	is => 'ro',
	lazy => 1,
	builder => 'statics',
);

sub statics {{}}

has web_path => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_web_path { my @path = shift->path; defined $path[1] ? $path[1] : $path[0] }

has template_path => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_template_path { my @path = shift->path; $path[0] }

1;