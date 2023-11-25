#enshure file config
file_line {'Authentication':
  enshure =>  'absent',
  path    =>  '~/.ssh/config',
  line    =>  ' PubkeyAuthentication yes',
  match   =>  ' PubkeyAuthentication yes',
  replace =>  true
}

file_line { 'PasswordAuthentication':
  enshure =>  'absent',
  path    =>  '~/.ssh/config',
  line    =>  ' PasswordAuthentication no',
  match   =>  ' PasswordAuthentication no',
  replace =>  true

}

file_line {'IdentityFile':
  enshure =>  'absent',
  path    => '~/.ssh/config',
  line    => ' IdentityFile ~/.ssh/school',
  match   => ' IdentityFile ~/.ssh/school',
  replace =>  true
}
