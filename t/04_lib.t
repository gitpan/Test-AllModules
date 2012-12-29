use strict;
use warnings;
use Test::AllModules;
use File::Spec;
use lib File::Spec->catfile('t','lib2');

BEGIN {
    my $checks = [
        +{
            'use_ok' => sub {
                my $class = shift;
                eval "use $class;1;";
            },
        },
    ];

    all_ok(
        search_path => 'MyApp2',
        checks => $checks,
        lib => [ File::Spec->catfile('t','lib2') ]
    );
}
