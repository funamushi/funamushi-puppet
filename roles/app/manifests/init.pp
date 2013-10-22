class app {
  $ssh_port = 21631
  $ports = [80, $ssh_port]

  include ::sshd
  include ::base
  include ::nginx
  include ::iptables

     Class['::base']
  -> Class['::nginx']
}
