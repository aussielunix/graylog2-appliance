# Class: mongodb
#
# This class installs MongoDB (stable)
#
# Notes:
#  This class is Ubuntu specific.
#  By Sean Porter Consulting
#
# Actions:
#  - Install MongoDB using a 10gen Ubuntu repository
#  - Manage the MongoDB service
#  - MongoDB can be part of a replica set
#
# Sample Usage:
#  class { mongodb:
#    replSet => "myReplicaSet",
#    ulimit_nofile => 20000,
#  }
#
class mongodb(
  $replSet = $mongodb::params::replSet,
  $ulimit_nofile = $mongodb::params::ulimit_nofile,
  $repository = $mongodb::params::repository,
  $package = $mongodb::params::package
) inherits mongodb::params {

  # ensure that apt::ppa is available to us
  include ppa

  # This is the PPA provided by 10gen
  apt::source {'10gen':
    location          => 'http://downloads.mongodb.org/distros/ubuntu',
    release           => '10.4',
    repos             => '10gen',
    key               => '7F0CEB10',
    keyserver         => 'keyserver.ubuntu.com',
  }

  package { $package:
    ensure => installed,
    require => Apt::source['10gen']
  }

  service { "mongodb":
    enable => true,
    ensure => running,
    require => Package[$package],
  }

  file { "/etc/init/mongodb.conf":
    content => template("mongodb/mongodb.conf.erb"),
    mode => "0644",
    notify => Service["mongodb"],
    require => Package[$package],
  }

}
