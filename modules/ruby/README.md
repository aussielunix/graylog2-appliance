# foo puppet module

*this is currently a 0.25 module*  

This is a module for managing a foo instance.  
This ensures:

* that the _foo_ package is installed
* the _foo_ service is always running
* the _foo_ service is set to auto start at boot
* installs _/etc/foo.conf_ and _/etc/default/foo_

## TODO

* remove server specific data from module
* move to paramatised classes to allow a bunch of data to be passed in.

## Usage

    node bar-01 {
       include foo
    }
