# torssh Puppet Module

## Overview

This is a very simple package that makes an ssh server a 
[Tor hidden service](https://www.torproject.org/docs/hidden-services.html.en "Hidden service overview page"). 

## Config Example

    class { 'torssh':
        ssh_port => 9000, # This is the default
    }

### Prerequisites

Technically, you should have *some* sort of SSH server running but this module
won't fail is you don't :-)

### Testing

Once you're done provisioning your system with this module you should be able
to connect to your SSH client over the Tor network. First, you need to
determine your ``.onion`` address by issuing the following command:

    $ cat /var/lib/tor/hidden_service/hostname

Then you need to connect with an ssh client.
[Here's my tutorial](http://rbpod.tompurl.com/InstallTorOnDebian.html "TODO") 
on how to do that (under the **Client** section).

Please note that the ``ssh_port`` value above is the port that your SSH server
is listening on, **not** the port that "tor listens on". I used sarcastic
quotes in that sentence because Tor hidden services don't listen on a port.
Instead they connect to an "introduction point" that then connects them to
a hash table and yadda yadda. More detailed information can be found here:

* https://www.torproject.org/docs/hidden-services.html.en

Seriously, it's really cool how it all works. Run ``netstat`` after you've
provisioned your system and check out how everything is connected.

## Supported Platforms

This software has only been tested and installed on Debian Wheezy (7.x). I've
tested it on x64 and Raspbian.
