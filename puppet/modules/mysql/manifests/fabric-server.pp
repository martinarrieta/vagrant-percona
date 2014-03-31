class mysql::fabric::server {
	
	package {'mysql-utilities.noarch':
		provider => 'rpm',
		ensure => '1.4.1-1.el6',
		source => 'http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-utilities-1.4.1-1.el6.noarch.rpm',
		require => Package['mysql-server'], 
	}
	
}