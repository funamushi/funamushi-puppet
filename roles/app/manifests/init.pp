class app {
  $ports = [80]

  include ::base
  include ::iptables
  include ::maria::client
  include app::npm
  include app::u
  include app::nginx

     Class['::base']
  -> Class['app::npm']
}

