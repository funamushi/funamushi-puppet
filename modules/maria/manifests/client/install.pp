class maria::client::install {
  package { 'MariaDB-client':
    ensure => installed,
  }
}
