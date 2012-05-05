class graylog2::server::service {
  service {'graylog2-server':
    ensure   => running,
    provider => 'upstart',
    require  => Class['graylog2::server::config']
  }
}
