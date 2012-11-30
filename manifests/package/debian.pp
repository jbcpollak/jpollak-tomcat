# Class: tomcat::package::debian
#
# This module manages tomcat package installation on debian based systems
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
class tomcat::package::debian {
  package { 'tomcat7':
    ensure => present,
  }
}
