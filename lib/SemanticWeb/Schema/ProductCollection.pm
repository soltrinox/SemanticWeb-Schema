use utf8;

package SemanticWeb::Schema::ProductCollection;

# ABSTRACT: A set of products (either ProductGroup s or specific variants) that are listed together e

use Moo;

extends qw/ SemanticWeb::Schema::Collection SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'ProductCollection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A set of products (either <a class="localLink"
href="http://schema.org/ProductGroup">ProductGroup</a>s or specific
variants) that are listed together e.g. in an <a class="localLink"
href="http://schema.org/Offer">Offer</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<includes_object>

C<includesObject>

=begin html

<p>This links to a node or nodes indicating the exact quantity of the
products included in an <a class="localLink"
href="http://schema.org/Offer">Offer</a> or <a class="localLink"
href="http://schema.org/ProductCollection">ProductCollection</a>.<p>

=end html


A includes_object should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TypeAndQuantityNode']>

=back

=head2 C<_has_includes_object>

A predicate for the L</includes_object> attribute.

=cut

has includes_object => (
    is        => 'rw',
    predicate => '_has_includes_object',
    json_ld   => 'includesObject',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
