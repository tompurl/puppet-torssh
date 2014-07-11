class torssh::prereqs {
  apt::source { 'torproject':
    location   => "http://deb.torproject.org/torproject.org",
    repos      => "main",
    key        => "886DDD89",
    key_server => "keys.gnupg.net",
  }
}
