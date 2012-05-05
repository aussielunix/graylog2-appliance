node default {
  include ruby
  include elasticsearch
  include graylog2
  class { mongodb: }
}
