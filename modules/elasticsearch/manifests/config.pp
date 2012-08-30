# elasticsearch::config
# manages elasticsearch's configfiles
#
class elasticsearch::config
(
  $user     = 'elasticsearch',
  $group    = 'elasticsearch',
  $minmem   = '256m',
  $maxmem   = '2g',
  $pathlogs = '/var/log/elasticsearch',
  $pathconf = '/etc/elasticsearch',
  $pathdata = '/var/lib/elasticsearch',
)
{
  file {'/etc/elasticsearch/elasticsearch.yml':
    content => template('elasticsearch/elasticsearch.yml.erb'),
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    require => Class['elasticsearch::install'],
    notify  => Class['elasticsearch::service']
  }

  file {'/etc/default/elasticsearch':
    content => template('elasticsearch/elasticsearch.erb'),
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    require => Class['elasticsearch::install'],
    notify  => Class['elasticsearch::service']
  }
}
