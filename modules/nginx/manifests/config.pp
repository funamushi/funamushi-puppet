class nginx::config {
  file { '/var/log/nginx':
    ensure  => directory,
    owner   => nginx,
    group   => nginx,
    mode    => 0755,
    require => Package['nginx'],
  }

  file { '/usr/share/nginx/html':
    ensure  => directory,
    owner   => funamushi,
    group   => funamushi,
    mode    => 0755,
    require => Package['nginx'],
  }

  file { '/usr/share/nginx/html/index.html':
    owner   => funamushi,
    group   => funamushi,
    mode    => 0644,
    content => template('nginx/index.html'),
    require => Package['nginx'],
  }

  file { '/etc/nginx/nginx.conf':
    content => template('nginx/nginx.conf'),
  }

  file { '/etc/nginx/conf.d/default.conf':
    content => template('nginx/default.conf'),
  }
}
