#!/usr/bin/perl -w
#
# Description: script to validate an XML document aganist its schema
# Usage: $0 <schema file>  <xml file>
# Author:  Hong Xie
# Date created: 21/04/2006
#

use XML::LibXML;

my ($schema_file, $xml_file) = @ARGV;

my $schema = XML::LibXML::Schema->new(location => $schema_file);

my $parser = XML::LibXML->new;
my $doc    = $parser->parse_file($xml_file);

print "$xml_file is validated successfully against $schema_file\n"
     unless $schema->validate($doc);

