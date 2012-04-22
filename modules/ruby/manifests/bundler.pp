class ruby::bundler {
  package {'bundler':
    ensure   => present,
    provider => 'gem',
    require  => Class['ruby::install']
  }

  file {'/etc/profile.d/rubygems.sh':
    source  => 'puppet:///modules/ruby/etc/profile.d/rubygems.sh',
    mode    => '0755',
    owner   => 'root',
    group   => 'root',
    require => Class['ruby::install']
  }
}
