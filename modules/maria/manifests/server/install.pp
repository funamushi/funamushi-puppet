class maria::server::install {
  package { 'MariaDB-server':
    ensure  => installed,
  }
}
