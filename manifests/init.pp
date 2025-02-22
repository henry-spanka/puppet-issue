# == Class: issue
#
# Wrapper class to handle issue files
#
# === Parameters
#
# [*source*]
#   Source file to be used
#
# === Examples
#
#  class { 'issue':
#    source => 'puppet://files/my_issue.txt'
#  }
#
# === Authors
#
# Alejandro Ricoveri <alejandroricoveri@gmail.com>
#
# === Copyright
#
# Copyright 2014 Alejandro Ricoveri.
#

class issue (
  $source = undef
) {
  #
  # Issue file
  #
  file {
    [
    '/etc/issue.net'
    ]:
    ensure => 'file',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => $source
  }
}
