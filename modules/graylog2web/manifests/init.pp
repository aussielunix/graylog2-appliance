# == Class: graylog2web
#
class graylog2web
(
  $version           = 'present',
  $enable            = false,
  $start             = false,
)
{
  class{'graylog2web::install': } ->
  class{'graylog2web::config': } ~>
  class{'graylog2web::service': } ->
  Class['graylog2web']
}
