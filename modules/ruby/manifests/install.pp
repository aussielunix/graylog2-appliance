# ruby::install
# takes care of installing system ruby 1.8
#
class ruby::install {
  # ensure that apt::ppa is available to us
  include ppa

  # This PPA gives us modern day rubygems
  apt::ppa { 'ppa:maco.m/ruby': }

  $packages = ['ruby', 'rdoc', 'rdoc1.8', 'irb', 'irb1.8', 'libreadline-ruby', 'libreadline-ruby1.8', 'rubygems'],

  package { $packages:
    ensure  => present,
    require => Apt::Ppa['ppa:maco.m/ruby']
  }
}
