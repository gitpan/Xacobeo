package Xacobeo;

=head1 NAME

Xacobeo - XPath (XML Path Language) visualizer.

=head1 SYNOPSIS

xacobeo file [xpath]

=head1 DESCRIPTION

This program provides a graphical user interface (GUI) that can be used for
running XPath queries.

The program tries to provide all the elements that are needed in order to write,
test and execute XPath queries. The program displays the DOM and the namespaces
available. It also registers the namespaces automatically and displays each
element with it's associated namespaces. All is performed with the idea of being
able of running an XPath query as soon as the GUI is displayed.

This program uses XML::LibXML (libxml2) for all XML manipulations and Gtk2 for
the graphical interface.

=head1 AUTHORS

Emmanuel Rodriguez E<lt>potyl@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 by Emmanuel Rodriguez.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

=cut

use strict;
use warnings;
use 5.006;

our $VERSION = '0.01_01';

1;
