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
		for (values %{$_}) {
			die "The file ".$_->fullpath." already exist!!!" if defined $fullpath_files{$_->fullpath};
			$fullpath_files{$_->fullpath} = $_;
		}
	}
	return \%fullpath_files;
}

sub locale_url {
	my ( $self, $page, $locale ) = @_;
	return $self->files->{$page}->{$locale}->fullpath;
}

has pages_coderefs => (
	is => 'ro',
	lazy => 1,
	builder => 'pages',
);

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