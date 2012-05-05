class mongo::service {
  service {'mongodb':
    ensure     => 'running',
    enable     => 'true',
    require    => Class['mongo::config'],
  }
}

