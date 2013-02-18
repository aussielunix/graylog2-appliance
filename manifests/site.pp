node default {
  include mongo

  # Apt::Source things must always happen before Package things
  #
  Apt::Source <| |> -> Package <| |>

  # ensure your apt repo is available
  # this is where I have graylog2 and elasticsearch packages
  #
  class { 'aussielunix::repo': }

  # install elasticsearch and set the clustername to be the same
  # as the graylog2-elasticsearch node
  #
  class { 'elasticsearch':
    clustername => 'graylog2'
  }

  class { 'graylog2server':
    es_cluster_name => 'graylog2'
  }

  # starts up under webrick using upstart
  # default is to not startup so you can manage it from
  # another module. passenger or unicorn or nginx etc
  #
  class { 'graylog2web':
    enable => true,
    start  => true
  }
}
