# Jetty8 Puppet Module

## Quick Start

### Prerequisites

This module doesn't require any additional modules or software.

### Installation

Add the following to your site.pp file:

    class { 'jetty8':
        xmx_value => 64,
    }

### Testing

This module configures Jetty to listen on the loopback interface only. You
therefore have to test it using a browser that runs on the server, which will
probably be a console-based browser like [elinks](http://elinks.or.cz/ "Elinks home page")

## Overview

This tool 

## Assumptions

TODO

## Supported Platforms

This software has only been tested and installed on Debian Wheezy (7.x).


