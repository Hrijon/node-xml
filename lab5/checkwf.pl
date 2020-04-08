#!/usr/bin/perl -w
#
# Description: Script to check that an XML document is well-formed
# Usage: $0 <xml file name>
#

use XML::Parser;

my $filename = shift;

my $parser = new XML::Parser;
$parser->parsefile($filename);
print "The document $filename is well-formed.\n";

