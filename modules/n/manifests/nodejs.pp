define n::nodejs ($version = $title) {
  exec { "install-node-${version}":
    command  => "n ${version}",
    provider => 'shell',
    timeout  => 0,
  }
}
