include mysql::repository
include mysql::server
include mysql::config
include mysql::service
include misc

include mysql::fabric::server
include mysql::fabric::config
include mysql::fabric::connector


Class['mysql::repository'] -> Class['mysql::server'] -> Class['mysql::config'] -> Class['mysql::service'] -> Class['mysql::fabric::connector'] -> Class['mysql::fabric::server'] -> Class['mysql::fabric::config']

