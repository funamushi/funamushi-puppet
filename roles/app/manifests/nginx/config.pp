class app::nginx::config {
  file { '/etc/nginx/conf.d/fmushi.conf':
    content => template('app/fmushi.conf'),
  }
}
