# graylog2 puppet module

** THIS IS A STUB ONLY FOR NOW **

This is a module for managing both Graylog2 server & Graylog2-web instances.  
This ensures:

* that the _graylog2-server & graylog2-web_ package is installed
* the _graylog2-serv & graylog2-web_ service is always running
* the _graylog2-server & graylog2-web_ service is set to auto start at boot

## Requirements

This module makes use of:

* puppetlabs-apt module.  
* aussielunix-mongo module.  
* aussielunix-elasticsearch module.  

## Usage

    node bar-01 {
       include 'graylog2-server'
       include 'graylog2-web'
    }

## TODO

* merge aussielunix/graylog2server  & aussielunix/graylog2-web into this single
  module.  
* Move to parameterised classes so that the config files do not need to be edited
  in the module itself.  

<table>
  <tr>
    <th>Author</th><td>Mick Pollard</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright © 2012 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the Apache License, see COPYING</td>
  </tr>
  <tr>
    <th>Twitter / Freenode</th><td>@aussielunix</td>
  </tr>
</table>
