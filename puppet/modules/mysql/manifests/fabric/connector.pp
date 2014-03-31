class mysql::fabric::connector {
	
	package {'mysql-connector-python.noarch':
		alias => 'MySQL-connector-python',
		provider => 'rpm',
		ensure => latest,
		source => 'http://downloads.mysql.com/snapshots/pb/mysql-connector-python-fabric/mysql-connector-python-1.1.1-labs-fabric-1.el6.noarch.rpm',
		require => Package['MySQL-server'], 
	}
}