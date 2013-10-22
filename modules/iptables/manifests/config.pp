class iptables::config {
  file { '/etc/sysconfig/iptables':
    mode    => 600,
    owner   => root,
    group   => root,
    content => template('iptables/iptables'),
  }
}
