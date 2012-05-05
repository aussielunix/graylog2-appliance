# graylog2::web::install
# takes care of installing graylog2 web interface
#
class graylog2::web::install {
  package {'graylog2-web':
    ensure  => present,
    # FIXME: set deps for ruby, rubygems & bundler
    require => Class['graylog2::common']
  }
}
