class tomcat::config inherits tomcat::params {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file { "${tomcat::params::tc_conf_dir}":
    ensure => directory,
  }
}
