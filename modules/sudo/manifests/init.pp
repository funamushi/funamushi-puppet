class sudo {
  include sudo::install
  include sudo::config

     Class['sudo::install']
  -> Class['sudo::config']
}
