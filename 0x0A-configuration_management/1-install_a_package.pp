# install a package
package {'flask':
  ensure          => 'installed',
  provider        => 'pip3',
  install_options =>  ['-v', '2.1.0']
}
