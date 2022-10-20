# install a package

packege {'pip3':
name => $flask,
command => 'pip3',
ensure => 'installed',

}
