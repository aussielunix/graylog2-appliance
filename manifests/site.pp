node default {
  include mongo

  Apt::Source <| |> -> Package <| |>

  class { 'aussielunix::repo': }
  class { 'elasticsearch':
    clustername => 'graylog2'
  }
  class { 'graylog2server':
    es_cluster_name => 'graylog2'
  }
  class { 'graylog2web':
    enable => true,
    start  => true
  }
}
