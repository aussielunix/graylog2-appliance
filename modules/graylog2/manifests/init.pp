# Class: graylog2
#
# This class will install both a Graylog2 server and Graylog2 web instance on the same server.
# Use the separate classes for splitting this out to two servers.
# graylog2::server & graylog2::web
#
# Parameters:
#
# Actions:
#
# Meta class for installing both server and web on the one server.
#
# Requires:
#
# Sample Usage:
#
class graylog2 {
  include graylog2::server
  include graylog2::web
}
