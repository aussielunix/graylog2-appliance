class ruby::bundler {
  package {'bundler':
    endure   => present,
    provider => 'gem',
    require  => Class['ruby::install']
  }
}
