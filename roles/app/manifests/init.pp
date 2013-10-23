class app {
  $ports = [80]

  include ::base
  include ::nginx
  include ::iptables

     Class['::base']
  -> Class['::nginx']
}
