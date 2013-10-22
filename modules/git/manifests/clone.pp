define git::clone (
  $repository = $title,
  $clone_dir  = '/usr/local/src',
  $reference  = 'master'
) {
  if $nane == $title {
    if $repository =~ /([^\/]+)\.git$/ {
      $name = $1
    }
    else {
      fail("Couldn't detect name for ${repository}")
    }
  }

  Exec {
    path => '/usr/bin',
  }

  exec { "git clone ${name}":
    cwd     => $clone_dir,
    command => "git clone ${repository} ${clone_dir}/${name}",
    creates => "${clone_dir}/${name}",
  }

  exec { "sync ${name}":
    cwd     => "${clone_dir}/${name}",
    command => "git fetch origin && git checkout -q ${reference}",
    require => Exec["git clone ${name}"],
  }
}
