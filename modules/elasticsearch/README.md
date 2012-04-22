# elasticsearch puppet module

This is a module for managing a single node elasticsearch instance.  
This ensures:

* that the _elasticsearch_ package is installed
* the _elasticsearch_ service is always running
* the _elasticsearch_ service is set to auto start at boot
* installs _/etc/elasticsearch/elasticsearch.yml_ and  _/etc/default/elasticsearch_

## Requirements

This module makes use of the puppetlabs-apt module.  


## Usage

    node bar-01 {
       include elasticsearch
    }
