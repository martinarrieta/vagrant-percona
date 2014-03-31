class mysql::fabric::server {
	
	package {'mysql-utilities.noarch':
		provider => 'rpm',
		ensure => '1.4.1-1.el6',
		source => 'http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-utilities-1.4.1-1.el6.noarch.rpm',
		require => [Package['MySQL-server'], Package['MySQL-connector-python']], 
	}
	
	file {
		"/etc/mysql/fabric.grants.sql":
			alias => 'fabric.grants.sql',
			ensure  => present,
			content => template("mysql/fabric.grants.erb"),
	}
	
	exec { "/usr/bin/mysql < /etc/mysql/fabric.grants.sql":
		path   => "/usr/bin",
		creates => "/var/lib/mysql/${fabric_database}/db.opt",
		require => File['fabric.grants.sql'],
	}

}