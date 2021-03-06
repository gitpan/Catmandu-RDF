use strict;
use warnings;
use Test::More;
use Catmandu ':all';

use_ok 'Catmandu::Fix::aref_query';

my $fixer = Catmandu::Fix::aref_query->new( 'dc_title' => 'title' );
is $fixer->field, 'title';

my $rdf = importer('RDF', file => 't/example.ttl')->first;
($rdf->{_uri}) = keys %$rdf;

$fixer->fix( $rdf );
delete $rdf->{ $rdf->{_uri} };

is_deeply $rdf, {
    '_uri' => 'http://example.org',
    title => "B\x{c4}R"
}, 'simple RDF fix';

$rdf = importer('RDF', file => 't/example.ttl')->first;
Catmandu::Fix::aref_query->new('http://example.org','dc_title','label')->fix($rdf);
is $rdf->{label}, "B\x{c4}R";

done_testing;
