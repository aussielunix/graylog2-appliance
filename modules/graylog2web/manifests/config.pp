# graylogweb::config
# manages graylog2-web's config files
#
class graylog2web::config {
  file { '/etc/init/graylog2-web.conf':
    source => 'puppet:///modules/graylog2web/graylog2-web.conf',
    mode   => '0755',
    owner  => 'root',
    group  => 'root'
  }
}
