class app {
  $ports = [80]

  include ::base
  include ::iptables
  include ::nginx
  include app::npm

     Class['::base']
  -> Class['::nginx']

     Class['::base']
  -> Class['app::npm']
}

