#create a manifest that kills a process named killmenow.
exec {'killmenow':
  command => 'pkill -15 killmenow',
  path    => '/usr/bin/',
  returns => [0, 1]
}
