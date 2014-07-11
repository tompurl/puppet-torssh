class torssh ($ssh_port = "9000") {

    Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
    include apt

    torssh::install, torssh::config, torssh::service

}
