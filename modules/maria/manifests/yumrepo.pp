class maria::yumrepo {
  yumrepo { 'maria':
    descr    => 'maria yum repository',
    baseurl  => 'http://yum.mariadb.org/5.5/centos6-amd64',
    enabled  => 1,
    gpgkey   => 'https://yum.mariadb.org/RPM-GPG-KEY-MariaDB',
    gpgcheck => 1,
  }
}
