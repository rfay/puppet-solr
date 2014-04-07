# == Class: solr::params
# This class sets up some required parameters
#
# === Actions
# - Specifies jetty and solr home directories
# - Specifies the default core
#
class solr::params {

  # /usr/share/jetty6 is the location on RHEL
  $jetty_home = '/usr/share/jetty6'
  $solr_home = '/usr/share/solr'
  $solr_version = '4.7.1'
  $cores = ['default']

}

