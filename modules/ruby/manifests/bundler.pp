class ruby::bundler {
  package {'bundler':
    ensure   => present,
    provider => 'gem',
    require  => Class['ruby::install']
  }
}
