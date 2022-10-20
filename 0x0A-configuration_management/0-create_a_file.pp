#  create a file in /tmp
file {'/tmp/school':
ensure  => present,
path    => '/tmp/school',
<<<<<<< HEAD
<<<<<<< HEAD
mode    => '0744',
=======
mode => '0774',
>>>>>>> refs/remotes/origin/master
=======
mode => '0744',
>>>>>>> refs/remotes/origin/master
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}
