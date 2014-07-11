class torssh ($ssh_port = "9000") {

    Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

    include torssh::install, torssh::config, torssh::service

}
