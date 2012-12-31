package DDG::Publisher::DirRole;
# ABSTRACT: The role for a directory in the publisher system

use MooX::Role;
use DDG::Publisher::File;

requires qw(
	path
	pages
);

=attr key

The key inside the site for this directory. Required for instantiation.

=cut

has key => (
	is => 'ro',
	required => 1,
);

=attr site

Site object for this directory. Required for instantiation.

=cut

has site => (
	is => 'ro',
	required => 1,
);

=attr files

Contains a hash of the files for this directory.

=cut

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

=attr fullpath

This hash also contains all files, but with the full path on the filesystem
as key, so that collides can be detected.

=cut

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

=attr pages_coderefs

This attribute contains all the coderefs for the pages that have to be
generated for this specific directory. It uses L<pages> as builder. Normally
you override L<pages> in your site class.

=cut

has pages_coderefs => (
	is => 'ro',
	lazy => 1,
	builder => 'pages',
);

sub pages {{}}

=attr statics_coderefs

This attribute contains all the coderefs for the static pages that have to be
generated for this specific directory. It uses L<statics> as builder. Normally
you override L<statics> in your site class. A static file is not generated for
every language

=cut

has statics_coderefs => (
	is => 'ro',
	lazy => 1,
	builder => 'statics',
);

sub statics {{}}

=attr web_path

The path on the web for this directory.

=cut

has web_path => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_web_path { my @path = shift->path; defined $path[1] ? $path[1] : $path[0] }

=attr template_path

This is the path inside the templates, used for the pages and statics of this
directory.

=cut

has template_path => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_template_path { my @path = shift->path; $path[0] }

1;