class mongo::install {
  package { 'mongodb':
    ensure  => 'installed',
  }
}
