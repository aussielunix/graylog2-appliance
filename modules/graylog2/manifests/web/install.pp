# graylog2::web::install
# takes care of installing graylog2 web interface
#
class graylog2::web::install {
  package {'graylog2-web':
    ensure  => present,
    require => [ Class['ruby::install'], Class['ruby::bundler'] ]
  }
}
