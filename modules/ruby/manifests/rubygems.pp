class ruby::rubygems {
  include stdlib

  # This PPA gives us modern day rubygems
  apt::ppa { 'ppa:maco.m/ruby': }

  package {'rubygems':
    ensure  => present,
    require => Apt::Ppa['ppa:maco.m/ruby']
}
