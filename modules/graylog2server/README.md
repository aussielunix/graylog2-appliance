# graylog2-server puppet module

This is a module for managing the server part of a graylog2 instance.  
This ensures:

* that the _graylog2-server_ package is installed
* the _graylog2-server_ service is always running
* the _graylog2-server_ service is set to auto start at boot
* installs _/etc/graylog2.conf_ and _/etc/init/graylog2-server.conf_

## Usage

    node bar-01 {
       include graylog2-server
    }
