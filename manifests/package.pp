# Class: nginx::package
#
# This module manages NGINX package installation
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class nginx::package {
  anchor { 'nginx::package::begin': }
  anchor { 'nginx::package::end': }

  case $::osfamily {
    redhat: {
      class { 'nginx::package::redhat':
        require => Anchor['nginx::package::begin'],
        before  => Anchor['nginx::package::end'],
      }
    }
    debian: {
      class { 'nginx::package::debian': 
        require => Anchor['nginx::package::begin'],
        before  => Anchor['nginx::package::end'],
      }
    }
    suse: {
      class { 'nginx::package::suse':
        require => Anchor['nginx::package::begin'],
        before  => Anchor['nginx::package::end'],
      }
    }
  }
}
