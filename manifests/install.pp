# == Class: solr::install
# This class installs the required packages for jetty
#
# === Actions
# - Installs default jdk
# - Installs jetty and extra libs
#
class solr::install {

  package { 'jetty':
    name => 'jetty6',  # Make this work dependent on OS
    ensure  => present,
    require => Class['java'],

  }

  # libjetty-extra doesn't exist on RHEL
#  package { 'libjetty-extra':
#    ensure  => present,
#    require => Package['jetty'],
#  }

  package { 'wget':
    ensure  => present,
  }

  package { 'curl':
    ensure  => present,
  }
}

