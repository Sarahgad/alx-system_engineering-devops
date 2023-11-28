# Set resource defaults
Package { ensure => 'present' }
File { ensure => 'present', owner => 'ubuntu', group => 'ubuntu', mode => '0644' }
Service { ensure => 'running', enable => true }

# Install nginx package
package { 'nginx': }

# Create the index file with dynamic content
file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello, World!',
}

# Configure nginx with the redirect
exec { 'configure_nginx':
  command => '/bin/bash -c sudo sed -i "/listen 80 default_server;/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-enabled/default',
  require => Package['nginx'],
  notify  => Service['nginx'],
  return  => [0,1]
}

# Restart nginx when configuration changes
service { 'nginx': }
