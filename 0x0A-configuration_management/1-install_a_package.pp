class { 'python':
	ensure => 'installed',
}

package { 'python3-pip':
	ensure => 'installed',
	require => Class['python'],
}

exec { 'install-flask':
	command => '/usr/bin/pip3 install Flask==2.1.0',
	creates => '/usr/local/lib/python3.8/dist-packages/flask',
	require => Package['python3-pip'],
}
