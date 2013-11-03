class maria::server::config {
  file { '/etc/my.cnf':
    owner   => root,
    group   => root,
    mode    => 0644,
    content => template('maria/my.cnf'),
  }

  file { '/etc/my.cnf.d':
    ensure => directory,
    owner  => root,
    group  => root,
    mode   => 0755,
  }

  file { '/etc/my.cnf.d/server.cnf':
    owner   => root,
    group   => root,
    mode    => 0644,
    content => template('maria/server.cnf'),
    require => File['/etc/my.cnf.d'],
  }
}
