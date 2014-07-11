class torssh::install {
    package { ["tor", "deb.torproject.org-keyring"] :
        require => Class["torssh::prereqs"],
        ensure => latest,
    }
}
