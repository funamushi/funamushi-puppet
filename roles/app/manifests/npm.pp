class app::npm {
  $nodejs_version = '0.10.21'

  n::nodejs { $nodejs_version:
    ensure  => present,
    require => Class['n']
  }

  n::npm {
    ['brunch',
     'bower',
     'pm2',
     ]:
    require => N::Nodejs[$nodejs_version],
  }
}
