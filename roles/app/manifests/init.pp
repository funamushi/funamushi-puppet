class app {
  $ports = [80]

  include ::base
  include ::iptables
  include ::nginx
  include app::npm
  include app::u

     Class['::base']
  -> Class['::nginx']

     Class['::base']
  -> Class['app::npm']

     Class['::base']
  -> Class['app::u']
}

