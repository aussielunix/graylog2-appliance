# DO NOT USE - CURRENTLY WORK IN PROGRESS #

I am re-writing this project so that it builds out a graylog2 0.10 based appliance.

### Graylog2 Appliance

In here is some puppet manifests and modules for building out a working Graylog2 system on a single host.  
You have a choice of two very simple deployment methods: 

* Vagrant
* Capistrano
  
Vagrant is for building out Graylog2 in a local virtualbox guest.  
*NOTE: Vagrant will download my basebox the first time you run it (455M).*

    vagrant up
    # browse to 172.31.255.2:3000

Capistrano is for building out Graylog2 on a remote host.  
For full usage help run `cap -e go`

    cap go HOST='ec2-foo-09498.example.com'
    # browse to ec2-foo-09498.example.com:3000

#### Requirements

Vagrant requires you have Virtualbox setup and the vagrant rubygem installed.  
Capistrano requires you have a clean Ubuntu Precise guest (from anywhere, local VM, cloud provider etc) and the capistrano rubygem installed.  


#### Todo

* tune rsyslog to send logs to graylog2
* split out the Graylog2 puppet module to separate repos.

<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright (c) 2012 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the Apache License, see COPYING</td>
  </tr>
  <tr>
    <th>twitter </th><td>@aussielunix</td>
  </tr>
</table>

