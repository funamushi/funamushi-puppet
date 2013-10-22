class sudo::config {
  file { '/etc/sudoers':
    content => template('sudo/sudoers.erb'),
    mode    => 440,
    owner   => root,
    group   => root,
  }
}
