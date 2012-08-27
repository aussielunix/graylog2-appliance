node default {
  include aussielunix         #setup aussielunix apt repo
  include elasticsearch
  include graylog2            # meta class installs web and server on same host
  include mongodb
}
