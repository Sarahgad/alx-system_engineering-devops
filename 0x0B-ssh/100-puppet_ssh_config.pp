#enshure file config
file_line {'Authentication':
  path    =>  '~/.ssh/config',
  line    =>  ' PubkeyAuthentication yes',
  match   =>  ' PubkeyAuthentication yes',
  replace => 'true'
}

file_line { 'PasswordAuthentication':
  path    =>  '~/.ssh/config',
  line    =>  ' PasswordAuthentication no',
  match   =>  ' PasswordAuthentication no',
  replace =>  'true'

}

file_line {'IdentityFile':
  path    => '~/.ssh/config',
  line    => ' IdentityFile ~/.ssh/school',
  match   => ' IdentityFile ~/.ssh/school',
  replace =>  'true'
}
