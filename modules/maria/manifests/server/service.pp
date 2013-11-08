class maria::server::service {
  service { 'mysql':
    ensure     => running,
    enable     => true,
    hasrestart => true,
  }
}
