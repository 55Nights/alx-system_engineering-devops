#create a manifest that kills a process named killmenow
exec { 'killmenow':
command => '/usr/bin/pkill -f killmenow',
  path  => ['/bin', '/usr/bin'],
}
