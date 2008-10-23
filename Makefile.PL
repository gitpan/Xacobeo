#!/usr/bin/perl

use strict;
use warnings;
use 5.006;

use inc::Module::Install;


name           'Xacobeo';
all_from       'lib/Xacobeo.pm';

requires       'Pod::Usage';
requires       'Getopt::Long';
requires       'Glib';
requires       'Gtk2';
requires       'Gtk2::GladeXML';
requires       'Time::HiRes';
requires       'XML::LibXML';
requires       'File::ShareDir';
requires       'Class::Accessor::Fast';

install_share  'share';
install_script 'bin/xacobeo';

WriteAll;
