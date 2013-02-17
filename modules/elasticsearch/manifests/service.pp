# manages the elasticsearch daemon
#
class elasticsearch::service {
  $ensure = $elasticsearch::start ? { true => running, default => stopped }

  service{'elasticsearch':
    ensure   => $ensure,
    enable   => $elasticsearch::enable,
    provider => 'upstart',
  }
}
