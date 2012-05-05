class mongo::config {
  file {'/etc/init/mongodb.conf':
    source  => 'puppet:///modules/mongo/mongodb.conf',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    require => Class['mongo::install'],
  }
}
