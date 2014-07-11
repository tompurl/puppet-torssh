class torssh::service {
    service { "tor":
        ensure => running,
        require => Class["torssh::config"],
    }
}
