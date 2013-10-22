class iptables {
  include iptables::install
  include iptables::config
  include iptables::service

     Class['install']
  -> Class['config']
  ~> Class['service']
}
