# install a package
package { 'flask':
  ensure          => 'installed',
  provider        => 'pip',
  install_options =>  ['-v', '2.1.0']
}
