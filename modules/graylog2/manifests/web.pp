# Class: graylog2-web
#
# This module manages the graylog2-web portion of graylog2
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class graylog2::web {
  include graylog2::web::install
  include graylog2::web::config
  include graylog2::web::service
}
