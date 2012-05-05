# aussielunix puppet module

This is a module for ensuring the aussielunix apt repo is installed.
This ensures:

* that the _aussielunix_ gpg key is installed to apt
* that the _aussielunix_ apt repo is available to apt

## Requirements

This module makes use of the puppetlabs-apt module.  

## Usage

    node bar-01 {
       include aussielunix::repo
    }

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
