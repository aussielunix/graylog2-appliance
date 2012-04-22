# graylog2web::install
# takes care of installing graylog2web
#
#FIXME: how to know the aussielunix repos is already installed ?
class graylog2web::install {
  package {'graylog2-web':
    ensure  => present,
    require => Apt::Source['aussielunix']
  }
}
