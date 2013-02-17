# graylog2server::install
# take scare of installing graylog2server
# requires the package to be in an apt repo
# and the apt repo already added
#
class graylog2server::install {
  package {'graylog2-server':
    ensure => $graylog2server::version
  }
}
