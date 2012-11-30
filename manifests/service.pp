# Class: tomcat::service
#
# This module manages tomcat service management and vhost rebuild
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
class tomcat::service {
  service { "tomcat":
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
