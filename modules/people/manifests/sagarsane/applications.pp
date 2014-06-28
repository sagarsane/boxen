# == Description
#
# Applications specific for Sagar Sane (aka "sagarsane").
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::sagarsane::system_roles'
#
class people::sagarsane::applications (
  $system_roles = undef
) {

  $_system_roles = hiera_array('people::sagarsane::system_roles', [])
  $roles = $system_roles ? { undef => $_system_roles, default => $system_roles}

  include people::sagarsane::applications::general

  if member($roles, 'work') {
    include 'people::sagarsane::applications::work'
  }
  elsif member($roles, 'personal') {
    include 'people::sagarsane::applications::personal'
  }

}
