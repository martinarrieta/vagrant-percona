class mysql::server {

	case $operatingsystem {
		centos: {
			package {
				"mysql-community-client.$hardwaremodel":
					alias => "MySQL-client",
					ensure => latest;
				"mysql-community-devel.$hardwaremodel":
					require => [ Package['MySQL-client'] ],
					alias => "MySQL-devel",
					ensure => latest;
				"mysql-community-server.$hardwaremodel":
					alias => "MySQL-server",
					require => Package["MySQL-client"],
					ensure => latest;
				"mysql-community-libs-compat.$hardwaremodel":
					alias => "MySQL-shared",
					ensure => latest;
			}
		}
		ubuntu: {
			#TODO
		}
	}	
}
