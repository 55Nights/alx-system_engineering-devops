# install a package
<<<<<<< HEAD

packege {'pip3':
name => $flask,
command => 'pip3',
ensure => 'installed',

=======
package { 'flask':
  ensure          => 'installed',
  provider        => 'pip',
  install_options =>  ['-v', '2.1.0']
>>>>>>> refs/remotes/origin/master
}
