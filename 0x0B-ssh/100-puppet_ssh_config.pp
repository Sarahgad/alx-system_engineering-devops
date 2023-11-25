#enshure file config
file_line {'Authentication':
  path =>  '~/.ssh/config',
  line =>  ' PubkeyAuthentication yes',
}

file_line { 'PasswordAuthentication':
  path =>  '~/.ssh/config',
  line =>  ' PasswordAuthentication no',
}

file_line {'IdentityFile':
  path => '~/.ssh/config',
  line => ' IdentityFile ~/.ssh/school',
}
