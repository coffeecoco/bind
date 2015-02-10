# Taken from the "Sample Usage :"
include bind::server
bind::server::conf { '/etc/named.conf':
  acls => {
    'rfc1918' => [ '10/8', '172.16/12', '192.168/16' ],
  },
  masters => {
    'mymasters' => [ '10.55.50.0/24' ],
  },
  zones => {
    'prod1.whispir.co.nz' => [
      'type master',
      'file "prod1.whispir.co.nz"',
    ],
    'example.org' => [
      'type slave',
      'file "slaves/example.org"',
      'masters { mymasters; }',
    ],
  },
  includes => [
    '/etc/myzones.conf',
  ],
}

