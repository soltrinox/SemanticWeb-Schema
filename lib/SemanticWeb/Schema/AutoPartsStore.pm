use utf8;

package SemanticWeb::Schema::AutoPartsStore;

# ABSTRACT: An auto parts store.

use Moo;

extends qw/ SemanticWeb::Schema::Store SemanticWeb::Schema::AutomotiveBusiness /;


use MooX::JSON_LD 'AutoPartsStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

An auto parts store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AutomotiveBusiness>

=cut

1;
