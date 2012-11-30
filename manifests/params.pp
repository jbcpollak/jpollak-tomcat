# Class: tomcat::params
#
# This module manages tomcat parameters
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
class tomcat::params {
  $tc_temp_dir = '/tmp'
  $tc_run_dir  = '/usr/share/tomcat7'

  $tc_conf_dir           = '/etc/tomcat7'

  $tc_logdir = $::kernel ? {
    /(?i-mx:linux)/ => '/var/log/tomcat7',
  }

  $tc_pid = $::kernel ? {
    /(?i-mx:linux)/  => '/var/run/tomcat7.pid',
  }

  $tc_daemon_user = $::operatingsystem ? {
    /(?i-mx:debian|ubuntu)/                    => 'tomcat7',
    /(?i-mx:fedora|rhel|centos|scientific|suse|opensuse)/ => 'tomcat7',
  }
}
