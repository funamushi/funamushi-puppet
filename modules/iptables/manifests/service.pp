class iptables::service {
  service { 'iptables':
    enable    => true,
    ensure    => running,
    hasstatus => true,
  }
}
