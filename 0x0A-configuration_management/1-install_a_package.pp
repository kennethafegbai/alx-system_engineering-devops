class { 'python':
	ensure => 'installed',
}

python::pip { 'flask':
	ensure => '2.1.0',
	require => Class['python'],
}
