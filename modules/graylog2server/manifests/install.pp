# graylog2server::install
# takes care of installing graylog2-server
#
#FIXME: how to know the aussielunix repos is already installed ?
class graylog2server::install {
  package {'graylog2-server':
    ensure  => present,
    require => [ Apt::Source['aussielunix'], Class['ruby'] ]
  }
}
