# ruby::install
# takes care of installing system ruby 1.8
#
class ruby::install {
  $packages = ['ruby', 'rdoc', 'rdoc1.8', 'irb', 'irb1.8', 'libreadline-ruby', 'libreadline-ruby1.8'],
  package {$packages:
    ensure => present,
  }
}
