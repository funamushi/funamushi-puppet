class app::nginx {
  include ::nginx
  include app::nginx::config

     Class['::nginx']
  -> Class['app::nginx::config']
  ~> Service['nginx']
}
