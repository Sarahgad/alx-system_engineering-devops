#enshure file config
include stdlib

file_line {'Authentication':
  enshure =>  'present',
  path    =>  '~/.ssh/config',
  line    =>  ' PubkeyAuthentication yes',
  replace =>  true
}

file_line { 'PasswordAuthentication':
  enshure =>  'present',
  path    =>  '~/.ssh/config',
  line    =>  ' PasswordAuthentication no',
  replace =>  true

}

file_line {'IdentityFile':
  enshure =>  'present',
  path    => '~/.ssh/config',
  line    => ' IdentityFile ~/.ssh/school',
  replace =>  true
}
