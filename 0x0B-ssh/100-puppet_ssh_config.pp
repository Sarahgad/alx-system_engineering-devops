# configure_ssh.pp

augeas { 'ssh_identity':
  context => '~/.ssh/school', # Replace with the actual path
  changes => [
    'set Host[1]/IdentityFile[1] ~/.ssh/school',
    'set Host[1]/PasswordAuthentication no',
  ],
}
