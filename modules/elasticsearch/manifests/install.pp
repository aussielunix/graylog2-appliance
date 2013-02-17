# elasticsearch::install
# takes care of installing elasticsearch
# requires aussielunix apt repo
#
class elasticsearch::install {
  package {'elasticsearch':
    ensure  => $elasticsearch::version
  }
}
