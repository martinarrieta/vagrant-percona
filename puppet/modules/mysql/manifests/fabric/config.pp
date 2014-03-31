class mysql::fabric::config {



	file {
		"/etc/mysql/fabric.cfg":
			ensure  => present,
			content => template("mysql/fabric.cfg.erb"),
	}                     
}
