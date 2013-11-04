class app {
  $ports = [80]

  include ::base
  include ::iptables
  include ::nginx
  include ::maria::client
  include app::npm
  include app::u

     Class['::base']
  -> Class['::nginx']
  -> Class['app::npm']
  -> Class['app::u']
  -> Class['::maria::client']
}

