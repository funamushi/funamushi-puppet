class nginx::config {
  file { '/etc/nginx/nginx.conf':
    content => template('nginx/nginx.conf'),
    require => Package['nginx'],
  }
}
