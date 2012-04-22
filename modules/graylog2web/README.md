# graylog2-web puppet module

This is a module for managing the web (rails frontend) part of a graylog2 instance.  
This ensures:

* that the _graylog2-web_ package is installed
* the _graylog2-web_  service is always running (rails/webrick)
* the _graylog2-web_ service is set to auto start at boot (rails/webrick)

## Usage

    node bar-01 {
       include graylog2-web
    }
