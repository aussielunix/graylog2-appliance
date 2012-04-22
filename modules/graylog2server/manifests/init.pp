# Class: graylog2-server
#
# This module manages the graylog2-server portion of graylog2
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class graylog2server {
  include graylog2server::install
  include graylog2server::config
  include graylog2server::service
}
