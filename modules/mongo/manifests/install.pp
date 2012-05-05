class mongo::install {
  notify{'Installing mongodb': }
  package { 'mongodb-stable':
    ensure  => 'installed',
    require => [ Exec['apt-update'], Class['mongo::common'], ],
  }
}
