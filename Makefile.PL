#!/app/unido-i06/magic/perl
#                              -*- Mode: Perl -*- 
# $Basename: Makefile.PL $
# $Revision: 1.3 $
# Author          : Ulrich Pfeifer
# Created On      : Tue May 27 17:27:28 1997
# Last Modified By: Ulrich Pfeifer
# Last Modified On: Thu Jun 19 11:26:32 2003
# Language        : CPerl
# Update Count    : 15
# Status          : Unknown, Use with caution!
# 
# (C) Copyright 1997, Ulrich Pfeifer, all rights reserved.
# 
# 

# $Format: "\$VERSION = \"$ReleaseVersion$\";"$
$VERSION = "1.301";

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
