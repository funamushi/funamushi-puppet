class maria::server {
  include maria::yumrepo
  include maria::server::install
  include maria::server::config
  include maria::server::service

     Class['maria::yumrepo']
  -> Class['maria::server::install']
  -> Class['maria::server::config']
  ~> Class['maria::server::service']
}
