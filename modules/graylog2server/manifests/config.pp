# graylog2server::config
# manages graylog2-server's configfiles
class graylog2server::config {
  file {'/etc/graylog2.conf':
    source  => 'puppet:///modules/graylog2server/graylog2.conf',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    require => Class['graylog2server::install'],
    notify  => Class['graylog2server::service']
  }
}
