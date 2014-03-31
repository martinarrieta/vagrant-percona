class mysql::service {

	service {
		"mysqld":
			enable  => true,
			ensure  => 'running',
			require => [File['/etc/my.cnf'],Package['MySQL-server']],
			subscribe => File['/etc/my.cnf'];
			
	}
}