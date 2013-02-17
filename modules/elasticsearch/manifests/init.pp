# == Class: elasticsearch
#
# A module to manage an elasticsearch cluster.
# Assumes you have a package available in an apt repo and
# you have set up a dependency on the appropriate apt repo.
#
# === Parameters
# [*version*]
#   The package version to install
#   **default** 'present' to install the latest in the apt repo
#   'absent' to uninstall
#
# [*user*]
#   user to run elasticsearch under
#   TODO: manage this user with puppet
#
# [*group*]
#   group to run elasticsearch under
#   TODO: manage this group with puppet
#
# [*minmem*]
#   FIXME: ES Java setting - minimum memory setting
#   This tunes FOO in /etc/defauts/elasticsearch
#
# [*maxmem*]
#   FIXME: ES Java setting - maximum memory setting
#   This tunes FOO in /etc/defauts/elasticsearch
#
# [*pathlogs*]
#   path to where to store elasticsearch logs
#   **default** '/var/log/elasticsearch'
#
# [*pathconf*]
#   path to where to find the config file
#   **default** '/etc/elasticsearch'
#
# [*pathdata*]
#   path to where data is stored
#   **default** '/var/lib/elasticsearch'
#
# [*enable*]
#   Should the service be enabled during boot time?
#   **default** true
#
# [*start*]
#   Should the service be started by Puppet
#   **default** true
#
# [*clustername*]
#   name of the ES cluster
#   **default** platypus
class elasticsearch
(
  $version     = 'present',
  $user        = 'elasticsearch',
  $group       = 'elasticsearch',
  $minmem      = '256m',
  $maxmem      = '512m',
  $pathlogs    = '/var/log/elasticsearch',
  $pathconf    = '/etc/elasticsearch',
  $pathdata    = '/var/lib/elasticsearch',
  $clustername = 'platypus',
  $enable      = true,
  $start       = true
)
{
  class{'elasticsearch::install': } ->
  class{'elasticsearch::config': } ~>
  class{'elasticsearch::service': } ->
  Class['elasticsearch']
}
