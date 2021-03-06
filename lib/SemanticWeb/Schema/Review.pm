use utf8;

package SemanticWeb::Schema::Review;

# ABSTRACT: A review of an item - for example

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Review';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

A review of an item - for example, of a restaurant, movie, or store.




=head1 ATTRIBUTES


=head2 C<item_reviewed>

C<itemReviewed>

The item that is being reviewed/rated.


A item_reviewed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_item_reviewed>

A predicate for the L</item_reviewed> attribute.

=cut

has item_reviewed => (
    is        => 'rw',
    predicate => '_has_item_reviewed',
    json_ld   => 'itemReviewed',
);


=head2 C<review_aspect>

C<reviewAspect>

This Review or Rating is relevant to this part or facet of the
itemReviewed.


A review_aspect should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_review_aspect>

A predicate for the L</review_aspect> attribute.

=cut

has review_aspect => (
    is        => 'rw',
    predicate => '_has_review_aspect',
    json_ld   => 'reviewAspect',
);


=head2 C<review_body>

C<reviewBody>

The actual body of the review.


A review_body should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_review_body>

A predicate for the L</review_body> attribute.

=cut

has review_body => (
    is        => 'rw',
    predicate => '_has_review_body',
    json_ld   => 'reviewBody',
);


=head2 C<review_rating>

C<reviewRating>

=begin html

<p>The rating given in this review. Note that reviews can themselves be
rated. The <code>reviewRating</code> applies to rating given by the review.
The <a class="localLink"
href="http://schema.org/aggregateRating">aggregateRating</a> property
applies to the review itself, as a creative work.<p>

=end html


A review_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Rating']>

=back

=head2 C<_has_review_rating>

A predicate for the L</review_rating> attribute.

=cut

has review_rating => (
    is        => 'rw',
    predicate => '_has_review_rating',
    json_ld   => 'reviewRating',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
