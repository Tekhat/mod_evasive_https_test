#!/usr/bin/perl
# test_https.pl: small script to test mod_dosevasive's effectiveness when SSL is enabled

use IO::Socket::SSL;
use strict;

for (0..100) {
    my $response;
    my $SOCKET = IO::Socket::SSL->new(
        Proto    => 'tcp',
        PeerAddr => '127.0.0.1:443',
        #The SSL_verify_mode set to SSL_VERIFY_NONE will ignore the certificate verification (if self signed certificate used)
        SSL_verify_mode => SSL_VERIFY_NONE
    ) or die 'Failed: $!';

    print $SOCKET "GET /?$_ HTTP/1.1\r\nHost: 127.0.0.1\r\nConnection: close\r\n\r\n";
    $response = <$SOCKET>;
    print $response;
    close($SOCKET);
}
