# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  ensure => link,
  mode   => '0755',
  target => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}
