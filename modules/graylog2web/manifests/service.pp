class graylog2web::service {
  service{'graylog2-web':
    ensure   => 'running',
    provider => 'upstart',
    require  => Class['graylog2web::config']
  }
}
