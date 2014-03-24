class jetty8::service {
    service { "jetty8":
        ensure => running,
        require => Class["jetty8::config"],
    }
}
