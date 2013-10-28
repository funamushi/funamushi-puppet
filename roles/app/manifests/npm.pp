class app::npm {
  $nodejs_version = '0.10.21'

  n::nodejs { $nodejs_version:
    ensure  => present,
    require => Class['n']
  }

  n::npm { 'grunt-cli':
  }

  n::npm { 'bower':
  }
}
