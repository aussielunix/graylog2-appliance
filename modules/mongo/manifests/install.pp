class mongo::install {
  package { 'mongodb-stable':
    ensure  => 'installed',
    require => Class['mongo::common']
  }
}
