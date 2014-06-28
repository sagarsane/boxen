# == Description
#
# Scripts and similiar for Sagar Sane (aka "sagarsane").
#
class people::sagarsane::bin {

  # Gradle Wrapper finder script
  file { '/usr/bin/gw':
    source  => 'puppet:///modules/people/sagarsane/bin/gw',
    mode    => '0755',
  }

}
