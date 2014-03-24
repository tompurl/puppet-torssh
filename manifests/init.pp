class jetty8 ($xmx_value = "64") {

    Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
    include jetty8::install, jetty8::config, jetty8::service

}
