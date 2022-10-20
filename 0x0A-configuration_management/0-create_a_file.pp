#  create a file in /tmp
file {'/tmp/school':
ensure  => present,
path    => '/tmp/school',
<<<<<<< HEAD
mode    => '0744',
=======
mode => '0774',
>>>>>>> refs/remotes/origin/master
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}
