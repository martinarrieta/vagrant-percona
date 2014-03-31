class mysql::repository {
	

	case $operatingsystem {
		ubuntu: {
			#TODO
		}
		centos: {
			$releasever = "6"
			
		  package {"mysql-community-release":
		    provider => 'rpm',
		    ensure => 'installed',
		    source => 'http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm' 
		  }
		}
	}

}
