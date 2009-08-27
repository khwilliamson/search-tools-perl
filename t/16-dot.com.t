use strict;
use Test::More tests => 14;
use lib 't';
use SnipHelp;    # runs 12 tests

my $file = 't/docs/dot.com.txt';
my $query
    = q{foobar@foo.com "hello world" google.com bing.co .bashrc foo/bar/index.html};
my ( $snip, $hilited, $regex, $buf ) = SnipHelp::test( $file, $query );
is( $snip,
    q{foobar@foo.com google.com bing.co.uk .bashrc hello world. http://myfoo.net/foo/bar/index.html this is a bunch more ... },
    "snip"
);
is( $hilited,
    q{<b class="x">foobar@foo.com</b> <b class="x">google.com</b> <b class="x">bing.co</b>.uk .<b class="x">bashrc</b> <b class="x">hello world</b>. http://myfoo.net/<b class="x">foo/bar/index.html</b> this is a bunch more ... },
    "hilited"
);