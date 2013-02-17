# graylogserver::config
# manages graylog2-server's config files
#
class graylog2server::config {
  $es_cluster_name  = $graylog2server::es_cluster_name
  $mongodb_useauth  = $graylog2server::mongodb_useauth
  $mongodb_user     = $graylog2server::mongodb_user
  $mongodb_password = $graylog2server::mongodb_password
  $mongodb_host     = $graylog2server::mongodb_host
  $mongodb_database = $graylog2server::mongodb_database
  $mongodb_port     = $graylog2server::mongodb_port

  file {'/etc/graylog2.conf':
    content => template('graylog2server/graylog2.conf.erb'),
    mode    => '0644',
    owner   => root,
    group   => root
  }

  file {'/etc/graylog2-elasticsearch.yml':
    content => template('graylog2server/graylog2-elasticsearch.yml.erb'),
    mode    => '0644',
    owner   => root,
    group   => root
  }
}
