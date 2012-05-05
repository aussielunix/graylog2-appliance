# graylog2::server::install
# takes care of installing graylog2-server
#
class graylog2::server::install {
  package {'graylog2-server':
    ensure  => present,
    require => Class['graylog2::common']
  }
}
