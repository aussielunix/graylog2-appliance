class graylog2server::service {
  service {'graylog2-server':
    ensure   => running,
    provider => 'upstart',
    require  => Class['graylog2server::config']
  }
}
