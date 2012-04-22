# elasticsearch::install
# takes care of installing elasticsearch
#
class elasticsearch::install {
  # ensure that apt::ppa is available to us
  include apt

  # This is the apt repos provided by Mick Pollard <@aussielunix>
  apt::source {'aussielunix':
    location    => 'http://ppa.lunix.com.au/ubuntu/',
    release     => 'lucid',
    repos       => 'main',
    key         => 'D77A4DCC',
    key_server  => 'keyserver.ubuntu.com',
    include_src => false
  }

  package {'elasticsearch':
    ensure  => present,
    require => Apt::Source['aussielunix']
  }
}
