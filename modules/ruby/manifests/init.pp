# Class: ruby
#
# This module manages system ruby (1.8) on a Ubuntu host
#
# Parameters:
#
# Actions:
#
# Installs a bunch of packages.
#
# Requires:
#
# Sample Usage:
#
# node default {
#   include ruby
# }
#
class ruby {
  include ruby::install
  include ruby::rubygems
}
