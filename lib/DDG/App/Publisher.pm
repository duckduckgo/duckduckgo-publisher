package DDG::App::Publisher;

use MooX;
use MooX::Options protect_argv => 0;
use Path::Class;
use DDG::Publisher;

option no_compression => (
	is => 'ro',
	default => sub { 0 },
);

sub run {
	my ( $self ) = @_;
	my $target = @ARGV
		? shift @ARGV
		: defined $ENV{DDG_PUBLISHER_TARGETDIR}
			? $ENV{DDG_PUBLISHER_TARGETDIR}
			: die "Require a target path or DDG_PUBLISHER_TARGETDIR set";
	my $dir = dir($target)->absolute;
	my $publisher = DDG::Publisher->new(
		no_compression => $self->no_compression,
	);
	print "Publishing to ".$dir." ... ";
	my $count;
	eval {
		$count = $publisher->publish_to($dir);
	};
	if ($@) {
		print "\nFAILED: ".$@;
		exit 1;
	} else {
		print $count." files generated\n";
	}
}

1;