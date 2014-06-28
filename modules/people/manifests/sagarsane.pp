# == Description
#
# Machine configuration specific for Sagar Sane (aka "sagarsane").
#
notify { "I'm in sagarsane!": }

class people::sagarsane {

  include people::sagarsane::dotfiles
  include people::sagarsane::applications

  ##########
  # TODO
  ##########

  # Add ~/.ssh/config
  # Add ~/.ssh/knownhosts
  # Add ~/bin/gw

}
