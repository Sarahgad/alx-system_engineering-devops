#create a file in /tmp.
file { 'school':
path    => '/tmp/school',
owner   => 'sarahgad',
group   => 'wheel',
mode    => '0744',
content => 'I love Puppet',
}
