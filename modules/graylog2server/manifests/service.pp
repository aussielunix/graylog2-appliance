# graylog2server::service
# manages whether the graylog2-server is enabled and running or not
#
class graylog2server::service {
  $ensure = $graylog2server::start ? { true => running, default => stopped }

  service{'graylog2-server':
    ensure   => $ensure,
    enable   => $graylog2server::enable,
    provider => 'upstart',
  }
}
