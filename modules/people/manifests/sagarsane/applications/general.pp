# == Description
#
# Applications specific for Sagar Sane (aka "sagarsane")
# that should be on all his machines.
#
class people::sagarsane::applications::general {

  include 'adium'
  include 'augeas'
  include 'alfred'
  include 'caffeine'
  include 'cyberduck'
  include 'googledrive'
  include 'graphviz'
  include 'heroku'
  include 'iterm2::stable'
  include 'launchbar'
  include 'omnigraffle::pro'
  include 'packages::asciidoc'
  include 'packages::sourcetree_cli'
  include 'tmux'
  include 'vagrant'
  include 'virtualbox'
  include 'zsh'
  include 'chrome::canary'

  # Window mover, resizer and more
  # http://www.binarybakery.com/product.php?app=windownaut
  package { 'Windownaut':
    source   => 'http://macapps.mooregreatsoftware.com.s3.amazonaws.com/Windownaut-1.2.6.dmg',
    provider => appdmg,
  }

}
