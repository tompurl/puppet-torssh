# torssh Puppet Module

## Overview

This is a very simple package that makes an ssh server a 
[Tor hidden service](https://www.torproject.org/docs/hidden-services.html.en "Hidden service overview page"). 

## Config Example

    class { 'torssh':
        ssh_port => 9000, # This is the default
    }

### Prerequisites

None

### Testing

Once you're done provisioning your system with this module you should be able
to connect to your SSH client over the Tor network. 
[Here's my tutorial](http://rbpod.tompurl.com/InstallTorOnDebian.html "TODO") 
on how to do that (under the **Client** section).

## Supported Platforms

This software has only been tested and installed on Debian Wheezy (7.x).


