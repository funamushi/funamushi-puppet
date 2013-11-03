class db {
  $ports = []

  include ::base
  include ::iptables
  include maria::server
}
