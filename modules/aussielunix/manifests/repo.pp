# aussielunix::repo
#
class aussielunix::repo {
  # ensure that apt::source is available to us
  include apt

  # make sure the aussielunix apt repos is available
  apt::source {'aussielunix':
    location    => 'http://ppa.lunix.com.au/ubuntu',
    release     => 'lucid',
    repos       => 'main',
    key         => 'D77A4DCC',
    key_server  => 'keyserver.ubuntu.com',
    include_src => false
  }
}

