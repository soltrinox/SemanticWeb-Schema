use utf8;

package SemanticWeb::Schema::DataCatalog;

# ABSTRACT: A collection of datasets.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'DataCatalog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

A collection of datasets.




=head1 ATTRIBUTES


=head2 C<dataset>



A dataset contained in this catalog.


A dataset should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Dataset']>

=back

=head2 C<_has_dataset>

A predicate for the L</dataset> attribute.

=cut

has dataset => (
    is        => 'rw',
    predicate => '_has_dataset',
    json_ld   => 'dataset',
);


=head2 C<measurement_technique>

C<measurementTechnique>

=begin html

<p>A technique or technology used in a <a class="localLink"
href="http://schema.org/Dataset">Dataset</a> (or <a class="localLink"
href="http://schema.org/DataDownload">DataDownload</a>, <a
class="localLink" href="http://schema.org/DataCatalog">DataCatalog</a>),
corresponding to the method used for measuring the corresponding
variable(s) (described using <a class="localLink"
href="http://schema.org/variableMeasured">variableMeasured</a>). This is
oriented towards scientific and scholarly dataset publication but may have
broader applicability; it is not intended as a full representation of
measurement, but rather as a high level summary for dataset
discovery.<br/><br/> For example, if <a class="localLink"
href="http://schema.org/variableMeasured">variableMeasured</a> is: molecule
concentration, <a class="localLink"
href="http://schema.org/measurementTechnique">measurementTechnique</a>
could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or
"immunofluorescence".<br/><br/> If the <a class="localLink"
href="http://schema.org/variableMeasured">variableMeasured</a> is
"depression rating", the <a class="localLink"
href="http://schema.org/measurementTechnique">measurementTechnique</a>
could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory".<br/><br/>
If there are several <a class="localLink"
href="http://schema.org/variableMeasured">variableMeasured</a> properties
recorded for some given data object, use a <a class="localLink"
href="http://schema.org/PropertyValue">PropertyValue</a> for each <a
class="localLink"
href="http://schema.org/variableMeasured">variableMeasured</a> and attach
the corresponding <a class="localLink"
href="http://schema.org/measurementTechnique">measurementTechnique</a>.<p>

=end html


A measurement_technique should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_measurement_technique>

A predicate for the L</measurement_technique> attribute.

=cut

has measurement_technique => (
    is        => 'rw',
    predicate => '_has_measurement_technique',
    json_ld   => 'measurementTechnique',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
