class app::u {
  file { '/u':
    ensure => directory,
    owner  => root,
    group  => root,
    mode   => 0755,
  }

  file { '/u/apps':
    ensure  => directory,
    owner   => funamushi,
    group   => funamushi,
    mode    => 0755,
    require => File['/u'],
  }
}
