node default {
  include aussielunix::repo   #setup aussielunix apt repo
  include graylog2            # meta class installs web and server on same host
  include mongo
  include elasticsearch

  class { 'elasticsearch::config':
    user     => 'elasticsearch',
    group    => 'elasticsearch',
    minmem   => '128m',
    maxmem   => '512m',
    pathlogs => '/var/log/elasticsearch',
    pathconf => '/etc/elasticsearch',
    pathdata => '/var/lib/elasticsearch',
  }
}
