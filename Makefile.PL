#!/usr/bin/perl
#                              -*- Mode: Perl -*- 
# $Basename: Makefile.PL $
# $Revision: 1.3 $
# Author          : Ulrich Pfeifer
# Created On      : Tue May 27 17:27:28 1997
# Last Modified On: Sun May  2 15:54:11 2004
# Language        : CPerl
# Update Count    : 19
# 
# (C) Copyright 1997-2004, Ulrich Pfeifer, all rights reserved.  This
# file is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# $Format: "\$VERSION = \"$ReleaseVersion$\";"$
$VERSION = "1.302";

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    'NAME'         => 'perlindex',
    'VERSION'      => $VERSION,
    'LIBS'         => [''],   # e.g., '-lm' 
    'DEFINE'       => '',     # e.g., '-DHAVE_SOMETHING' 
    'INC'          => '',     # e.g., '-I/usr/include/other' 
    'dist'         => { SUFFIX => "gz", COMPRESS => "gzip -f"},
    'EXE_FILES'    => [ 'perlindex' ],
     'clean'       => { 'FILES' => 'perlindex' },
);
