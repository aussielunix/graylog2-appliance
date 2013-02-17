# elasticsearch::config
# manages elasticsearch's configfiles
# TODO: manage user and group here
#
class elasticsearch::config {
  $user        = $elasticsearch::user
  $group       = $elasticsearch::group
  $minmem      = $elasticsearch::minmem
  $maxmem      = $elasticsearch::maxmem
  $pathlogs    = $elasticsearch::pathlogs
  $pathconf    = $elasticsearch::pathconf
  $pathdata    = $elasticsearch::pathdata
  $clustername = $elasticsearch::clustername

  file {'/etc/elasticsearch/elasticsearch.yml':
    content => template('elasticsearch/elasticsearch.yml.erb'),
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
  }

  file {'/etc/default/elasticsearch':
    content => template('elasticsearch/defaults/elasticsearch.erb'),
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
  }
}
