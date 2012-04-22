node default {
  include ruby
  include elasticsearch
  include graylog2server
  class { mongodb: }
}
