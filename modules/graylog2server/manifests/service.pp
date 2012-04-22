class graylog2server::service {
  service {'graylog2-server':
    ensure  => running,
    enable  => true,
    require => Class['graylog2server::config']
  }
}
