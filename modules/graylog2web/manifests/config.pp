# graylog2web::config
# manages graylog2-web's configfiles
# TODO: manage the graylog2-web user
#
class graylog2web::config {
  File {
    mode    => '0644',
    owner   => 'graylog2-web',
    group   => 'graylog2-web',
    require => Class['graylog2web::install'],
    notify  => Class['graylog2web::service']
  }

  file {'/usr/share/graylog2-web/config/general.yml':
    source  => 'puppet:///modules/graylog2web/general.yml'
  }

  file {'/usr/share/graylog2-web/config/mongoid.yml':
    source  => 'puppet:///modules/graylog2web/mongoid.yml'
  }

  file {'/usr/share/graylog2-web/config/email.yml':
    source  => 'puppet:///modules/graylog2web/email.yml'
  }

  file {'/etc/init/graylog2-web.conf':
    source => 'puppet:///modules/graylog2web/graylog2-web.conf',
    owner  => 'root',
    group  => 'root'
  }
}
