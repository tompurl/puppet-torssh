class jetty8::config inherits jetty8 {
  file { "/etc/default/jetty8":
    content => template("jetty8/jetty8.default.erb"),
    require => Package["jetty8"],
    mode    => 644,
    owner   => root,
    notify  => Service["jetty8"],
  } 
}
