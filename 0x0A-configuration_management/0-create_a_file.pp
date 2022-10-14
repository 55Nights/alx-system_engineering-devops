#  create a file in /tmp
file {'school':
ensure  => present,
path    => '/tmp/school',
mode    => '0774',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}
