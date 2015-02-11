# Taken from the "Sample Usage :"
include bind::server
bind::server::conf { '/etc/named.conf':
  acls => {
    'rfc1918' => [ '10/8', '172.16/12', '192.168/16' ],
  },
  masters => {
    'mymasters' => [ '192.0.2.1', '198.51.100.1' ],
  },
  zones => {
    'prod1.whispir.co.nz' => [
      'type master',
      'file "prod1.whispir.co.nz"',
    ],
    'prod1.whispir.co.nz' => [
      'type slave',
      'file "slaves/prod1.whispir.co.nz"',
      'masters { mymasters; }',
    ],
  },
  includes => [
    '/etc/myzones.conf',
  ],
}
