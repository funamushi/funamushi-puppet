define n::npm (
  $ensure      = present,
  $version     = undef,
  $source      = undef,
  $install_opt = undef,
  $remove_opt  = undef,
) {
  if $source {
    $pkg = $source
  } elsif $version {
    $pkg = "${name}@${version}"
  } else {
    $pkg = $name
  }

  if $ensure == present {
    exec { "npm install ${name}":
      command => "npm install -g ${install_opt} ${pkg}",
      unless  => "npm ls -g | grep '${pkg}'",
      path    => '/bin:/usr/bin:/usr/local/bin',
    }

  } else {
    exec { "npm remove ${name}":
      command => "npm remove -g ${pkg}",
      onlyif  => "npm ls -g | grep '${pkg}'",
      path    => '/bin:/usr/bin:/usr/local/bin',
    }
  }
}
