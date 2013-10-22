class nginx::config {
  file { '/var/log/nginx':
    ensure  => directory,
    owner   => nginx,
    group   => nginx,
    mode    => 0755,
    require => Package['nginx'],
  }


  file { '/var/www':
    ensure  => directory,
    owner   => nginx,
    group   => nginx,
    mode    => 0755,
    require => Package['nginx'],
  }

  file { '/etc/nginx/nginx.conf':
    content => template('nginx/nginx.conf'),
  }

  file { '/etc/nginx/conf.d/default.conf':
    content => template('nginx/default.conf'),
  }
}
