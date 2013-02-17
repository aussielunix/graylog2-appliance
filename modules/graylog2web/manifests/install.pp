# graylog2web::install
# takes care of installing graylog2web
# requires the package to be in an apt repo
# and the apt repo already added
#
class graylog2web::install {
  package {'graylog2-web':
    ensure => $graylog2web::version
  }
}
