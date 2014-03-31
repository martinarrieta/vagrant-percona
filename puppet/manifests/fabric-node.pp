include mysql::repository
include mysql::server
include mysql::config
include mysql::service
include misc



Class['mysql::repository'] -> Class['mysql::server'] -> Class['mysql::config'] -> Class['mysql::service'] 

#-> Class['mysql::fabric::connector']
