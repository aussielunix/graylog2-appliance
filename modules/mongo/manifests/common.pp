class mongo::common {
  # add key for 10gen mongo repos
  apt::key { '7F0CEB10':
    action => 'add',
  }

  #add 10gen mongo repos
  apt::location { '10gen':
    action   => 'add',
    location => 'deb http://downloads.mongodb.org/distros/ubuntu 10.4 10gen',
  }
}
