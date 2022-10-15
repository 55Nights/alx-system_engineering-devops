#  create a file in /tmp
file {'/tmp/school':
ensure  => present,
path    => '/tmp/school',
chmod_r => '0774',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}
