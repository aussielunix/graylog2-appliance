# graylog2::common
# takes care of installing things common
# to both Graylog2 server & Graylog2 web
#
class graylog2::common {
  # ensure that apt::source is available to us
  include apt

  # make sure the aussielunix apt repos is available to us
  # you should include this on both web and server nodes
  apt::source {'aussielunix':
    location     => 'http://ppa.lunix.com.au/ubuntu',
    release      => 'lucid',
    repos        => 'main',
    key          => 'D77A4DCC',
    key_server   => 'keyserver.ubuntu.com',
    inclkude_src => false
  }
}
