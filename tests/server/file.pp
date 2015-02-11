include bind::server
bind::server::file { 'example.com':
  source => "/etc/puppetlabs/puppet/modules/bind/files/named.empty",
}
