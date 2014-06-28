# == Description
#
# "Dot files" for Sagar Sane (aka "sagarsane").
#
# == Assumptions
#
# The .zshenv template assumes that the 'github_token' fact has been set.
# In Boxen, this is typically done in ~/.boxen/config.json
#
class people::sagarsane::dotfiles {
  include git

  $home = "/Users/${::boxen_user}"

  repository { 'oh-my-zsh' :
    source => 'https://github.com/jdigger/oh-my-zsh.git',
    path   => "${home}/.oh-my-zsh",
  }

  file { "${home}/.zshrc":
    source => 'puppet:///modules/people/sagarsane/zshrc',
  }

  #file { "${home}/.zshenv":
  #  content => template('people/sagarsane/zshenv.erb')
  #}

  file { "${home}/.zprofile":
    source => 'puppet:///modules/people/sagarsane/zprofile',
  }

 # file { "${home}/.gitconfig":
    # This should probably be managed using the git module instead...
 #   source => 'puppet:///modules/people/sagarsane/gitconfig',
 # }

  file { "${home}/.profile":
    source => 'puppet:///modules/people/sagarsane/profile',
  }

  file { "${home}/.shellpaths":
    source => 'puppet:///modules/people/sagarsane/shellpaths',
  }

  file { "${home}/.shellaliases":
    source => 'puppet:///modules/people/sagarsane/shellaliases',
  }

  file { "${home}/.shellvars":
    source => 'puppet:///modules/people/sagarsane/shellvars',
  }

}
