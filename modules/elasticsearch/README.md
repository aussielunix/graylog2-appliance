# elasticsearch puppet module

This is a module for managing a single node elasticsearch instance.  

This ensures:

* that the _elasticsearch_ package is installed
* the _elasticsearch_ service is always running
* the _elasticsearch_ service is set to auto start at boot
* installs _/etc/elasticsearch/elasticsearch.yml_ and  _/etc/default/elasticsearch_

## Requirements

This module requires access to a apt repo (PPA) that has an elasticsearch
package.  
You can build your own package and host it or I have a package available in my
own [apt repos.](https://github.com/aussielunix/puppet-aussielunix/blob/master/manifests/repo.pp)

Package building couldn't be simpler than with this [fpm-cookery](https://github.com/bernd/fpm-recipes/tree/master/elasticsearch) recipe. 

## Usage

    node bar-01 {
       include elasticsearch
    }

## TODO

* Move to parameterised classes so that the config files do not need to be edited
  in the module itself.  
* support for multiple elastic search nodes.  

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

