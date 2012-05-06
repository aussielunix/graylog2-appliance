class mongo::common {
  # ensure puppetlabs apt is available
  include apt

  # add the 10gen key and apt repos
  apt::source {'10gen':
    location    => 'http://downloads.mongodb.org/distros/ubuntu',
    release     => '10.4',
    repos       => '10gen',
    key         => '7F0CEB10',
    key_server  => 'keyserver.ubuntu.com',
    include_src => false
  }
}
