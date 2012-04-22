class elasticsearch::service {
  service{'elasticsearch':
    ensure  => running,
    enabled => true,
    require => Class['elasticsearch::config']
  }
}
