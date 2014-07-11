class torssh::install {
    package { "tor" :
        ensure => latest,
    }
}
