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
class graylog2::server {
  include graylog2::server::install
  include graylog2::server::config
  include graylog2::server::service
}
