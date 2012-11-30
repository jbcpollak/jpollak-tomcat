# Class: tomcat::package
#
# This module manages tomcat package installation
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
class tomcat::package {
  anchor { 'tomcat::package::begin': }
  anchor { 'tomcat::package::end': }

  case $::operatingsystem {
    centos,fedora,rhel,scientific: {
      class { 'tomcat::package::redhat':
        require => Anchor['tomcat::package::begin'],
        before  => Anchor['tomcat::package::end'],
      }
    }
    debian,ubuntu: {
      class { 'tomcat::package::debian': 
        require => Anchor['tomcat::package::begin'],
        before  => Anchor['tomcat::package::end'],
      }
    }
    opensuse,suse: {
      class { 'tomcat::package::suse':
        require => Anchor['tomcat::package::begin'],
        before  => Anchor['tomcat::package::end'],
      }
    }
  }
}
