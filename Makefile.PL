use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
open(PATCH, "./patchlevel.h") || die "Could not open patchlevel.h: $!";
while (<PATCH>) {
    if (/VERSION ([\d.]+)/) {
        $version = $1;
    }
    if (/PATCHLEVEL (\d+)/) {
        $revision = $1;
    }                       # 
}
close(PATCH);
WriteMakefile(
    'NAME'	   => 'perlindex',
    'VERSION'	   => sprintf("%5.3f", $version + $revision/1000),
    'LIBS'	   => [''],   # e.g., '-lm' 
    'DEFINE'	   => '',     # e.g., '-DHAVE_SOMETHING' 
    'INC'	   => '',     # e.g., '-I/usr/include/other' 
    'dist'         => { SUFFIX => "gz", COMPRESS => "gzip -f"},
    'EXE_FILES'    => [ 'perlindex' ],
#   'VERSION_FROM' => README,
#   'PM'           => {'English.pm' => '$(INST_LIBDIR)/Text/English.pm'},
);
