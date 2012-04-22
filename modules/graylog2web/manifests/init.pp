# Class: graylog2web
#
# This module manages a graylog2-web instance
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class graylog2web {
  include graylog2web::install
  include graylog2web::config
  include graylog2web::service
}
