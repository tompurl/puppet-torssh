class torssh::config inherits torssh {
  file { "/etc/tor/torrc":
    content => template("torssh/torrc.erb"),
    require => Package["tor"],
    mode    => 644,
    owner   => root,
    notify  => Service["tor"],
  } 
}
