class graylog2server::service {
  service {'graylog2-server':
    ensure  => running,
    enabled => true,
    require => Class['graylog2server::config']
  }
}
