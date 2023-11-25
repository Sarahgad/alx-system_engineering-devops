#enshure file config
file_line { 'PasswordAuthentication':
  path  =>  '/etc/ssh/ssh_config',
  line  =>  ' PasswordAuthentication',
  match => '^    PasswordAuthentication',

}

file_line {'IdentityFile':
  path  => '~/.ssh/config',
  line  => '  IdentityFile',
  match => '^    IdentityFile',
}
