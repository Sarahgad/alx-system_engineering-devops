# configure_ssh.pp

augeas { 'ssh_identity':
  context => '/etc/ssh/ssh_config', # Replace with the actual path
  changes => [
    'set Host[1]/IdentityFile[1] ~/.ssh/school',
    'set Host[1]/PasswordAuthentication no',
  ],
}
