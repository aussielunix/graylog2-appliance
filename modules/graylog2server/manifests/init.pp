# == Class: graylog2server
#
class graylog2server
(
  $version          = 'present',
  $enable           = true,
  $start            = true,
  $es_cluster_name  = 'graylog2',
  $mongodb_useauth  = false,
  $mongodb_user     = 'graylog2user',
  $mongodb_password = 'redacted',
  $mongodb_host     = '127.0.0.1',
  $mongodb_database = 'graylog2',
  $mongodb_port     = '27017',
)
{
  class{'graylog2server::install': } ->
  class{'graylog2server::config': } ->
  class{'graylog2server::service': } ->
  Class['graylog2server']
}
