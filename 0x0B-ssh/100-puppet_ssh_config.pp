#enshure file config
file_line {'.ssh/config':
  path => '~/.ssh/config,
  line => ' PubkeyAuthentication yes',
  line =>	' PasswordAuthentication no',
	line => ' IdentityFile ~/.ssh/school'
  }
