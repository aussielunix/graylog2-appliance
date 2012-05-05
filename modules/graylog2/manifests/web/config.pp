# graylog2::web::config
# manages graylog2-web's configfiles
# TODO: manage the graylog2-web user
# TODO: parameterise + move config files to templates
#
class graylog2::web::config {
  File {
    mode    => '0644',
    owner   => 'graylog2-web',
    group   => 'graylog2-web',
    require => Class['graylog2::web::install'],
    notify  => Class['graylog2::web::service']
  }

  file {'/usr/share/graylog2-web/config/general.yml':
    source  => 'puppet:///modules/graylog2/web/general.yml'
  }

  file {'/usr/share/graylog2-web/config/mongoid.yml':
    source  => 'puppet:///modules/graylog2/web/mongoid.yml'
  }

  file {'/usr/share/graylog2-web/config/email.yml':
    source  => 'puppet:///modules/graylog2/web/email.yml'
  }

  file {'/etc/init/graylog2-web.conf':
    source => 'puppet:///modules/graylog2/web/graylog2-web.conf',
    owner  => 'root',
    group  => 'root'
  }
}
