#! /usr/bin/perl
#########################################################################
#        This Perl script is Copyright (c) 2002, Peter J Billam         #
#               c/o P J B Computing, www.pjb.com.au                     #
#                                                                       #
#     This script is free software; you can redistribute it and/or      #
#            modify it under the same terms as Perl itself.             #
#########################################################################
use strict;
use warnings;
use Test::More tests => 3;

eval "require 'Term/Clui.pm'";
ok (! $@, 'Term::Clui compiles');

eval "require 'Term/Clui/FileSelect.pm'";
ok (! $@, 'Term::Clui::FileSelect compiles');

ok ($Term::Clui::VERSION eq $Term::Clui::FileSelect::VERSION,
        'version numbers agree');

diag '';
diag '';
diag '';
diag 'It\'s not easy to test a user-interface automatically';
diag 'to test it by hand, try "perl examples/test_script" ...';
diag '';
diag '';
