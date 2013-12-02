package Catmandu::RDF;
# ABSTRACT: Modules for handling RDF data within the Catmandu framework
our $VERSION = '0.11'; # VERSION


1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Catmandu::RDF - Modules for handling RDF data within the Catmandu framework

=head1 VERSION

version 0.11

=head1 DESCRIPTION

Catmandu::RDF contains modules for handling RDF data within the L<Catmandu>
framework. This release is in an early state of development. Feedback and
contributions are very welcome at L<https://github.com/nichtich/Catmandu-RDF>!

=head1 AVAILABLE MODULES

=over 4

=item L<Catmandu::Exporter::RDF>

Serialize RDF data (as RDF/XML, RDF/JSON, Turtle, NTriples, RDFa...).
RDF data must be provided in B<another RDF Encoding Form (aREF)> as 
implemented with L<RDF::aREF>.

=back

=head1 SUGGESTED MODULES

The following modules have not been implemented yet. Please contribute or
comment if you miss them!

=over 4

=item C<Catmandu::Importer::RDF>

Import serialized RDF data (RDF/XML, RDF/JSON, Turtle, NTriples, RDFa...).

=item C<Catmandu::Importer::SPARQL>

Import RDF data from a SPARQL endpoint.

=item C<Catmandu::Exporter::SPARUL> or C<Catmandu::Exporter::SPARQL>

Export RDF data with SPARQL/Update.

=item C<Catmandu::Exporter::RDFPatch>

Export RDF with HTTP PATCH.

=back

=head1 SEE ALSO

L<Catmandu>, L<RDF::aREF>, L<RDF::Trine>, L<RDF::NS>

=head1 AUTHOR

Jakob Voß

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Jakob Voß.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
