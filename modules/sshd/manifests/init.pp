class sshd {
  service { 'sshd':
    enable     => true,
    ensure     => running,
    hasrestart => true
  }

  file { '/etc/ssh/sshd_config':
    owner => root,
    group => root,
    mode  => 0644,
    content => template('sshd/sshd_config'),
    notify => Service['sshd']
  }
}
