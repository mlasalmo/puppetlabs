file { '/usr/local/bin/eyaml_edit':
  ensure => link,
  mode   => '0755',
  target => '/examples/eyaml_edit.sh',
}
