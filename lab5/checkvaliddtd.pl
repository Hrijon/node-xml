#!/usr/bin/perl -w
#
# Description: Script to check that an XML document is valid according to a DTD
# Usage: $0 <xml file name>
#

use XML::LibXML;

my $filename = shift;

my $parser = new XML::LibXML;
$parser->validation(1);

my $doc = $parser->parse_file($filename);

if( $doc and $doc->validate ) {
    print "The document $filename is valid.\n";
}
