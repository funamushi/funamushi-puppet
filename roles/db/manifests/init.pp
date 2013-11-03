class db {
  $ports = []

  include ::base
  include ::iptables
  include maria::client
  include maria::server

     Class['::base']
  -> Class['maria::client']
  -> Class['maria::server']
}
