#!/usr/bin/perl
use warnings;
use strict;

# Usage release.pl repository version next-version
# Where repository must match existing repository on git, and versions must correspond to JIRA versions.
# Perhaps wait with next-version until later in script.

# Validate input

my $num_args = $#ARGV + 1;
if ($num_args != 3) {
    print "\nUsage: release.pl repository version next_version\n";
    exit;
}

my ($repo, $version, $next_version) = @ARGV;

my $git = "";
my $jiras = qw( watch cpm fm );
my $repos = qw( watch plotter );


# Notify users

print("Notify users about pending release...\n");

# Check build screen that job is "green" (tests are passing)

print("Check build screen (Jenkins)...\n");

# Tag release by running existing script (what apps?)
