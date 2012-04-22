node default {
  include ruby
  include elasticsearch
  include graylog2server
  include graylog2web
  class { mongodb: }
}
