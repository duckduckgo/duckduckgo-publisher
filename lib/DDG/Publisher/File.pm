package DDG::Publisher::File;

use MooX;

sub fullpath {
	my ( $self ) = @_;
	my $fullpath = join('/',$self->dir->web_path,$self->file);
	$fullpath =~ s!/+!/!g;
	return $fullpath;
}

has dir => (
	is => 'ro',
	required => 1,
);

has file => (
	is => 'ro',
	required => 1,
	lazy => 1,
	builder => 1,
);

sub _build_file {
	my ( $self ) = @_;
	my $file = $self->filebase;
	$file .= '.'.$self->locale unless $self->locale eq 'en_US';
	$file .= '.html';
	return $file;
}

has filebase => (
	is => 'ro',
	required => 1,
);

has locale => (
	is => 'ro',
	required => 1,
);

has code => (
	is => 'ro',
	required => 1,
);

sub self_url {
	my ( $self ) = @_;
	$self->dir->site->url($self->dir, $self->filebase);
}

has template => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_template {
	my ( $self ) = @_;
	my $template = $self->dir->template_path.'/'.$self->filebase;
	$template =~ s!/+!/!g;
	$template .= '.tx';
	return $template;
}

has content => (
	is => 'ro',
	lazy => 1,
	builder => 1,
);

sub _build_content {
	my ( $self ) = @_;
	my $site_code = $self->dir->site->can('code');
	my $dir_code = $self->dir->can('code');
	my %vars = (
		f => $self,
		d => $self->dir,
		s => $self->dir->site,
	);
	%vars = ( %vars, $site_code->($self,\%vars) ) if $site_code;
	%vars = ( %vars, $dir_code->($self,\%vars) ) if $dir_code;
	%vars = ( %vars, $self->code->($self,\%vars) );
	return $self->dir->site->template_engine->render($self->template,\%vars);
}

1;