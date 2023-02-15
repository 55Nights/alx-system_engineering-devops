#create a manifest that kills a process named killmenow
exec{'killmenow':
path     => '.',
command  => 'kill killmenow',
provider => 'shell',
}
