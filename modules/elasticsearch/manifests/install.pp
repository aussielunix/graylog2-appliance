# elasticsearch::install
# takes care of installing elasticsearch
#
class elasticsearch::install {
  package {'elasticsearch':
    ensure  => present,
    require => Class['aussielunix::repo'],
  }
}
