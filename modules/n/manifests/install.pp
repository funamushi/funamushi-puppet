class n::install {
  exec { 'download-n':
    command => "curl https://raw.github.com/visionmedia/n/master/bin/n --output /usr/local/bin/n",
    creates => '/usr/local/bin/n',
    path    => '/bin:/usr/bin:/usr/local/bin',
  }

  file { '/usr/local/bin/n':
    mode => 755,
    require => Exec['download-n']
  }
}
