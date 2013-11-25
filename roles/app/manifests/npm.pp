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
     'coffee-script',
     ]:
    require => N::Nodejs[$nodejs_version],
  }
}
