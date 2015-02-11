include bind::server
bind::server::file { 'prod1.whispir.co.nz':
  source => "/etc/puppetlabs/puppet/modules/bind/files/prod1.whispir.co.nz'",
}
