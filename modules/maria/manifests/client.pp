class maria::client {
  include maria::yumrepo
  include maria::client::install

     Class['maria::yumrepo']
  -> Class['maria::client::install']
}
