class maria::server::install {
  include maria::yumrepo

  package { 'MariaDB-server':
    ensure  => installed,
    require => Class['maria::yumrepo']
  }
}
