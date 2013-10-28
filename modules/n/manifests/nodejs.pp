define n::nodejs (
  $ensure  = present,
  ) {
  $version = $title
  exec { "install-node-${version}":
    command => "n ${version}",
    path    => '/bin:/usr/bin:/usr/local/bin',
  }
}
