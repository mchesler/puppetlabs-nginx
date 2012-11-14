# Class: nginx::package::redhat
#
# This module manages NGINX package installation on RedHat based systems
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
class nginx::package::redhat {
  if ! defined(Package['nginx'])   { package { 'nginx':   ensure => installed } }
  if ! defined(Package['GeoIP'])   { package { 'GeoIP':   ensure => installed } }
  if ! defined(Package['gd'])      { package { 'gd':      ensure => installed } }
  if ! defined(Package['libXpm'])  { package { 'libXpm':  ensure => installed } }
  if ! defined(Package['libxslt']) { package { 'libxslt': ensure => installed } }
}
