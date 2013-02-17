# graylog2web::service
# manages whether the graylog2-web rails app is run under webrick
# defaults to no and expects to be managed elsewhere (ie: passenger)
#
class graylog2web::service {
  $ensure = $graylog2web::start ? { true => running, default => stopped }

  service{'graylog2-web':
    ensure   => $ensure,
    enable   => $graylog2web::enable,
    provider => 'upstart',
  }
}
