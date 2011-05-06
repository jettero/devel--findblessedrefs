# vi:fdm=marker fdl=0 syntax=perl:
# $Id: 01_load.t,v 1.3 2006/08/18 19:50:18 jettero Exp $

use strict;
use Test;

plan tests => 1;

eval 'use Devel::FindBlessedRefs'; ok( not $@ );
if( $@ ) {
    if( open IN, "Makefile" ) {
        warn " curious\n";
        while(<IN>) {
            warn $_ if m/(VERSION|REVISION)/ and not m/^\t/
        }
    }
}
