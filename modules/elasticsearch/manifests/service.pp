class elasticsearch::service {
  service{'elasticsearch':
    ensure  => running,
    enable  => true,
    require => Class['elasticsearch::config']
  }
}
